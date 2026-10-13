# 2026-10-13 · atualizar-cv · Versão em inglês do currículo

## Pedido
"Quero criar a versão em ingles do curriculo atual". Depois detalhou: "adaptando o curriculo portugues para ingles, para que um nativo entenda de forma clara e de forma humana". Pediu também o LinkedIn em inglês ("faça agora").

## Informações fornecidas pelo usuário
- Nenhum fato novo. Todo o conteúdo veio de `cv_joao_paulo.yaml`.

## Perguntas e respostas
- **P:** Cargos em inglês: tradução literal ou outro título oficial?
  **R:** Sem resposta. Usada a tradução literal (provisória).
- **P:** O nível de inglês do currículo ainda vale?
  **R:** Sem resposta. Mantido o mesmo nível do PT.
- **P:** A AZ-400 (validade 07/2026) foi renovada?
  **R:** Sem resposta. Mantida a data do PT.
- **P:** B.Eng. ou BSc? Acrescentar ", Brazil"? Incluir "Portuguese (native)"? Resumo em primeira pessoa?
  **R:** Sem resposta. Usados B.Eng., sem Brazil, sem português e resumo sem "I".

## O que foi feito
- Criado `cv_joao_paulo_en.yaml`: adaptação para leitor nativo, com os mesmos fatos, números, datas, links e quantidade de bullets do PT. Sem os comentários AUDIT. `render_command` sem os caminhos antigos.
- Criados `linkedin/linkedin_PT.md` e `linkedin/linkedin_EN.md` (About em primeira pessoa).
- Gerados `rendercv_output/20261013/João_Paulo_Ferreira_de_Souza_CV_EN_2026_10_13.{md,pdf}`, `..._LinkedIn_EN_2026_10_13.md` e as cópias em `latest/`. PDF EN com 4 páginas, igual ao PT.
- Revisão do orientador: "Built build and deploy pipelines" → "Created build and deploy pipelines", depois o EN foi regerado.

## Decisões e preferências
- O EN é uma adaptação natural (verbos no passado, termos brasileiros explicados), não uma tradução palavra por palavra.
- Grafia no EN: .NET, Node.js, TFS 2018, Scrum. "Homologação" → staging. "Carreira CLT" → first full-time role.

## Pendências
- Confirmar os cargos em inglês, o nível de inglês e a renovação da AZ-400.
- Decidir B.Eng./BSc, ", Brazil", "Portuguese (native)" e o resumo em primeira pessoa.
- Sugestão: padronizar a grafia no PT (.NET, Node.js, TFS 2018, Scrum) e rever o título "Gestão Operacional & Agilidade", porque o texto não fala de agilidade.
- Headline do LinkedIn usa "3x Microsoft Azure Certified"; o headline do YAML PT usa "Certified: 3x Azure". Alinhar se quiser.
- `linkedin_PT.md` vai para `rendercv_output` só na próxima geração do PT.
