# Currículo

## Install RenderCV

```bash
uv tool install "rendercv[full]"
```
## Create CV Yaml

```bash
rendercv new "cv_joao_paulo"
```

## Render CV

```bash
rendercv render "cv_joao_paulo.yaml"
```

render in real time
```bash
rendercv render --watch "cv_joao_paulo.yaml"
```


## Referências

- [Get Started - rendercv](https://docs.rendercv.com/user_guide/)
- [app.rendercv](https://app.rendercv.com)
## Fluxo com agentes (Claude Code)

As regras e a estrutura de pastas estão em [CLAUDE.md](CLAUDE.md). Os agentes ficam em `.claude/agents/`:
`orientador` coordena `atualizar-cv`, `avaliar-cv`, `gerar-carta` e `apoio-entrevista`.

Para gerar o currículo em PT e EN nas pastas `rendercv_output/AAAAMMDD/` e `rendercv_output/latest/`:

```bash
uv run scripts/gerar_cv.py
```
