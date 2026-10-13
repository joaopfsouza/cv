# Currículo de João Paulo Ferreira de Souza

Este repositório guarda o currículo em YAML (formato [RenderCV](https://docs.rendercv.com/)) e tudo que é produzido a partir dele: versões em PDF e Markdown, textos para o LinkedIn, avaliações para vagas, cartas de apresentação e treinos de entrevista.

Responda sempre em português do Brasil, a não ser que o usuário peça outro idioma.

## Quem faz o quê

A conversa principal atua como **orientador** (definido em `.claude/agents/orientador.md`): entende o pedido, pede o que faltar e delega para o agente certo. Para rodar a sessão já como orientador: `claude --agent orientador`.

| Agente | Quando usar |
|---|---|
| `atualizar-cv` | O usuário traz informação nova (emprego, projeto, certificação, curso) ou quer melhorar o texto do currículo. |
| `avaliar-cv` | O usuário traz o descritivo de uma vaga e quer saber o quanto o currículo combina com ela. |
| `gerar-carta` | O usuário quer uma carta de apresentação para uma vaga. |
| `apoio-entrevista` | O usuário quer treinar para a entrevista de uma vaga. |

## Regras gerais (valem para todos os agentes)

1. **Não inventar informação.** Números, tecnologias, cargos, datas, resultados e responsabilidades só entram se o usuário disse ou se já estão no YAML. Na dúvida, pergunte.
2. **Perguntar quando faltar contexto.** Perguntas curtas, no máximo 3 por vez, explicando por que a resposta importa.
3. **Escrita humana.** Manter o tom do João Paulo (veja o YAML e o histórico). Frases diretas, sem jargão de IA ("alavancar", "sinergia", "no cenário dinâmico de hoje", "apaixonado por"), sem excesso de travessões e sem listas de três adjetivos.
4. **Especialistas em contratação tech.** Todos os agentes pensam como recrutadores e gestores técnicos de vagas tech, com foco em DevOps, Cloud, SRE e Plataforma, incluindo filtros de ATS.
5. **Documentar toda interação** em `historico/` (veja abaixo). O histórico é lido no início de cada tarefa como contexto.
6. **Inglês só com base confirmada.** A versão EN é tradução fiel da PT. Nada aparece só no inglês.

## Arquivos

```
cv_joao_paulo.yaml          # fonte da verdade, PT-BR
cv_joao_paulo_en.yaml       # tradução EN (mesmo conteúdo, locale english)
cv_joao_paulo_resumido.yaml     # versão reduzida (2 páginas), derivada da completa PT
cv_joao_paulo_resumido_en.yaml  # versão reduzida EN, mesmos cortes da PT
linkedin/linkedin_PT.md     # textos prontos para colar no LinkedIn
linkedin/linkedin_EN.md
scripts/gerar_cv.py         # gera PDF/MD e copia para as pastas de saída
templates/relatorio.html    # base visual dos relatórios HTML
candidaturas/AAAAMMDD_empresa_vaga/
    vaga.md                 # descritivo da vaga, como o usuário passou
    avaliacao.html          # avaliar-cv
    carta_PT.md / carta_EN.md  # gerar-carta
    entrevista.html         # apoio-entrevista
historico/
    README.md               # índice, uma linha por interação
    AAAA-MM-DD_<agente>_<assunto>.md
rendercv_output/
    AAAAMMDD/João_Paulo_Ferreira_de_Souza_CV_PT_AAAA_MM_DD.{md,pdf}
    AAAAMMDD/João_Paulo_Ferreira_de_Souza_CV_EN_AAAA_MM_DD.{md,pdf}
    AAAAMMDD/João_Paulo_Ferreira_de_Souza_CV_{PT,EN}_Resumido_AAAA_MM_DD.{md,pdf}
    AAAAMMDD/João_Paulo_Ferreira_de_Souza_LinkedIn_{PT,EN}_AAAA_MM_DD.md
    latest/João_Paulo_Ferreira_de_Souza_{PT,EN}.{md,pdf}
    latest/João_Paulo_Ferreira_de_Souza_{PT,EN}_Resumido.{md,pdf}
    latest/João_Paulo_Ferreira_de_Souza_LinkedIn_{PT,EN}.md
```

**Versões completa e reduzida.** A completa (`cv_joao_paulo.yaml` e `_en`) é a fonte da verdade. A reduzida só corta ou condensa, sem texto novo nem fato diferente. Toda mudança de conteúdo entra primeiro na completa PT, depois na completa EN, e então nas duas reduzidas (se o trecho existir nelas), na mesma rodada. A reduzida deve continuar com 2 páginas.

## Gerar o currículo

```bash
uv tool install "rendercv[full]"   # uma vez
uv run scripts/gerar_cv.py         # PT e EN, completa e reduzida, data de hoje
uv run scripts/gerar_cv.py --lang PT --date 2026-10-13
```

O script define `settings.current_date` com a data da geração, grava em `rendercv_output/AAAAMMDD/` e copia a última versão para `rendercv_output/latest/`. Não use `rendercv render` direto para gerar versões oficiais, porque ele não segue esse padrão de pastas. Os arquivos antigos na raiz de `rendercv_output/` são de antes deste fluxo e ficam como estão.

Se o PDF falhar com `failed to download package ... packages.typst.org`, a rede está bloqueando o repositório de pacotes do Typst. Os pacotes `@preview/rendercv` e `@preview/fontawesome` podem ser copiados de https://github.com/typst/packages para `~/.cache/typst/packages/preview/`.

## Histórico de interações

Ao final de cada tarefa, crie `historico/AAAA-MM-DD_<agente>_<assunto>.md` e adicione uma linha em `historico/README.md`. Use `historico/_modelo.md`. O registro guarda:

- o que o usuário pediu e as informações novas que ele deu (com as palavras dele quando forem fatos do currículo);
- as perguntas feitas e as respostas;
- o que mudou e onde (arquivos, seções);
- decisões e preferências ("não quer citar salário", "prefere 'Engenheiro DevOps' a 'DevOps Engineer'");
- pendências para a próxima conversa.

Antes de começar qualquer tarefa, leia `historico/README.md` e os registros relacionados.

## Commits

Mensagens no padrão já usado no repositório, por exemplo `feat(cv): ✨ Adiciona experiência na Empresa X`.
