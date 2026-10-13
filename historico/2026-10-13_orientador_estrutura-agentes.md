# 2026-10-13 · orientador · Criação da estrutura de agentes

## Pedido
Criar um agente orientador que coordena quatro agentes (atualizar-cv, avaliar-cv, gerar-carta, apoio-entrevista), gerar o currículo em PT e EN (Markdown e PDF), uma versão para o LinkedIn, e organizar a saída em `rendercv_output/AAAAMMDD/` com cópia da última versão em `rendercv_output/latest/`.

## Informações fornecidas pelo usuário
- O currículo é gerado com RenderCV instalado via uv.
- Regras: não inventar informação, perguntar na dúvida, escrita humana, todos os agentes são especialistas em currículo e contratação tech.
- Documentar toda interação para servir de contexto.

## O que foi feito
- `CLAUDE.md` com regras gerais, estrutura de pastas e fluxo de geração.
- `.claude/agents/` com orientador, atualizar-cv, avaliar-cv, gerar-carta e apoio-entrevista.
- `scripts/gerar_cv.py` (roda com `uv run`) gerando PT/EN em `rendercv_output/AAAAMMDD/` e `latest/`.
- `templates/relatorio.html` como base dos relatórios.
- Primeira geração no novo padrão: `rendercv_output/20261013/` (somente PT).

## Decisões e preferências
- Nome dos arquivos datados com `AAAA_MM_DD` (ex.: `João_Paulo_Ferreira_de_Souza_CV_PT_2026_10_13.pdf`).
- Em `latest/`, um arquivo por idioma: `João_Paulo_Ferreira_de_Souza_PT.pdf` e `_EN.pdf`.
- O histórico fica versionado no próprio repositório.
- LinkedIn: um Markdown por idioma em `linkedin/`, com textos prontos para copiar.
- Nomes dos agentes com hífen (`atualizar-cv`), exigência do Claude Code.

## Pendências
- Criar `cv_joao_paulo_en.yaml`. O YAML atual só tem PT; a tradução depende de o usuário confirmar como quer apresentar cargos e o nível de inglês.
- Criar `linkedin/linkedin_PT.md` e `linkedin_EN.md` na primeira rodada do atualizar-cv.
- A certificação AZ-400 aparece com validade até 07/2026; confirmar se foi renovada.
