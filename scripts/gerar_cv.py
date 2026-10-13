# /// script
# requires-python = ">=3.11"
# dependencies = ["pyyaml>=6"]
# ///
"""Gera o currículo em PT e EN (Markdown e PDF) com o RenderCV.

Cada idioma tem duas variantes:
    completa  cv_joao_paulo.yaml / cv_joao_paulo_en.yaml (fonte da verdade)
    resumida  cv_joao_paulo_resumido.yaml / cv_joao_paulo_resumido_en.yaml (2 páginas,
              derivada da completa; gerada só se o arquivo existir)

Uso:
    uv run scripts/gerar_cv.py            # gera todos os idiomas, completa e resumida
    uv run scripts/gerar_cv.py --lang PT  # gera só um idioma (as duas variantes)
    uv run scripts/gerar_cv.py --date 2026-10-13

Saída:
    rendercv_output/AAAAMMDD/<Nome>_CV_<LANG>_AAAA_MM_DD.{md,pdf}
    rendercv_output/AAAAMMDD/<Nome>_CV_<LANG>_Resumido_AAAA_MM_DD.{md,pdf}
    rendercv_output/AAAAMMDD/<Nome>_LinkedIn_<LANG>_AAAA_MM_DD.md  (se linkedin/linkedin_<LANG>.md existir)
    rendercv_output/latest/<Nome>_<LANG>.{md,pdf}
    rendercv_output/latest/<Nome>_<LANG>_Resumido.{md,pdf}
    rendercv_output/latest/<Nome>_LinkedIn_<LANG>.md

O LinkedIn não tem versão resumida: é copiado uma vez por idioma.
"""

import argparse
import datetime as dt
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
OUTPUT = ROOT / "rendercv_output"
LATEST = OUTPUT / "latest"

# Fonte YAML de cada idioma. Um idioma sem arquivo é ignorado com aviso.
LANGS = {
    "PT": ROOT / "cv_joao_paulo.yaml",
    "EN": ROOT / "cv_joao_paulo_en.yaml",
}

# Versão resumida (2 páginas) de cada idioma. Opcional: sem arquivo, é pulada.
LANGS_RESUMIDO = {
    "PT": ROOT / "cv_joao_paulo_resumido.yaml",
    "EN": ROOT / "cv_joao_paulo_resumido_en.yaml",
}


def rendercv_cmd() -> list[str]:
    if shutil.which("rendercv"):
        return ["rendercv"]
    return ["uvx", "--from", "rendercv[full]", "rendercv"]


def file_stem(yaml_path: Path) -> str:
    data = yaml.safe_load(yaml_path.read_text(encoding="utf-8"))
    return data["cv"]["name"].strip().replace(" ", "_")


def render(lang: str, yaml_path: Path, date: dt.date, variant: str = "") -> list[Path]:
    """Gera PDF e MD de um YAML. `variant` vira sufixo do nome ("Resumido" -> _PT_Resumido)."""
    stem = file_stem(yaml_path)
    day_dir = OUTPUT / date.strftime("%Y%m%d")
    day_dir.mkdir(parents=True, exist_ok=True)
    LATEST.mkdir(parents=True, exist_ok=True)

    tag = f"{lang}_{variant}" if variant else lang
    base = day_dir / f"{stem}_CV_{tag}_{date.strftime('%Y_%m_%d')}"
    pdf, md = base.with_suffix(".pdf"), base.with_suffix(".md")

    # O .typ é intermediário: fica numa pasta temporária, fora do repositório.
    with tempfile.TemporaryDirectory() as tmp:
        cmd = rendercv_cmd() + [
            "render", str(yaml_path),
            "--settings.current_date", date.isoformat(),
            "-typ", str(Path(tmp) / "cv.typ"),
            "-pdf", str(pdf),
            "-md", str(md),
            "-nohtml", "-nopng",
        ]
        subprocess.run(cmd, check=True, cwd=ROOT)

    shutil.copy2(pdf, LATEST / f"{stem}_{tag}.pdf")
    shutil.copy2(md, LATEST / f"{stem}_{tag}.md")
    return [pdf, md]


def copy_linkedin(lang: str, yaml_path: Path, date: dt.date) -> list[Path]:
    stem = file_stem(yaml_path)
    day_dir = OUTPUT / date.strftime("%Y%m%d")
    generated = []
    linkedin = ROOT / "linkedin" / f"linkedin_{lang}.md"
    if linkedin.exists():
        dated = day_dir / f"{stem}_LinkedIn_{lang}_{date.strftime('%Y_%m_%d')}.md"
        shutil.copy2(linkedin, dated)
        shutil.copy2(linkedin, LATEST / f"{stem}_LinkedIn_{lang}.md")
        generated.append(dated)
    return generated


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--lang", choices=sorted(LANGS), action="append", help="idioma a gerar (repetível)")
    parser.add_argument("--date", type=dt.date.fromisoformat, default=dt.date.today(), help="data AAAA-MM-DD (padrão: hoje)")
    args = parser.parse_args()

    ok = True
    for lang in args.lang or LANGS:
        yaml_path = LANGS[lang]
        if not yaml_path.exists():
            print(f"[aviso] {lang}: {yaml_path.name} não existe, idioma ignorado.", file=sys.stderr)
            if args.lang:
                ok = False
            continue
        generated = render(lang, yaml_path, args.date)
        resumido = LANGS_RESUMIDO[lang]
        if resumido.exists():
            generated += render(lang, resumido, args.date, variant="Resumido")
        else:
            print(f"[aviso] {lang}: {resumido.name} não existe, versão resumida ignorada.", file=sys.stderr)
        generated += copy_linkedin(lang, yaml_path, args.date)
        for path in generated:
            print(f"[ok] {lang}: {path.relative_to(ROOT)}")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
