// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "João Paulo Ferreira de Souza",
  footer: context { [#emph[João Paulo Ferreira de Souza -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Última atualização Abr 2026] ],
  locale-catalog-language: "pt",
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 4,
    day: 6,
  ),
)


= João Paulo Ferreira de Souza

  #headline([DevOps Engineer | Azure · Kubernetes · Terraform | AWS | Python | Certified: 3x Azure])

#connections(
  [#connection-with-icon("location-dot")[Itapecerica da Serra, SP]],
  [#link("mailto:joao.ferreiradesouza@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[joao.ferreiradesouza\@gmail.com]]],
  [#link("tel:+55-11-91921-5622", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[(11) 91921-5622]]],
  [#link("https://linkedin.com/in/joaopfsouza", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[joaopfsouza]]],
)


== Resumo

Engenheiro DevOps com 7+ anos transformando infraestrutura em vantagem competitiva — de pipelines CI\/CD em larga escala a ambientes Kubernetes em produção para fintech. Ao longo da carreira, atuei em ambientes de educação e fintech gerenciando stacks multi-cloud (Azure, AWS), automatizando processos críticos e integrando segurança diretamente nos pipelines (SAST\/DAST, PCI DSS, SonarQube).

Sólida experiência em IaC com Terraform, Bicep e ARM Templates, além de vivência em SAFe, SCRUM e ITIL. Certificado Microsoft Certified: DevOps Engineer Expert (AZ-400) e Azure Administrator Associate (AZ-104).

== Objetivo

Contribuir como Engenheiro DevOps Sênior em times que valorizem automação, qualidade e entrega contínua de valor em ambientes multi-cloud.

== Formação

#education-entry(
  [
    #strong[Universidade Estadual Paulista (UNESP)], Engenharia Elétrica

    - Bolsista PIBIC\/REITORIA\/UNESP (2012–2013): pesquisa em Algoritmos Multiagentes aplicados a Robôs Móveis com sensores ultrassom e infravermelho.

  ],
  [
    Bauru, SP

    2011 – 2018

  ],
  degree-column: [
    #strong[Grad.]
  ],
)

== Experiências

#regular-entry(
  [
    #strong[ACQIO], ENGENHEIRO DEVOPS

    #summary[Parte do time de Infraestrutura e DevOps, atuando na modernização da stack tecnológica, automação e observabilidade em ambiente Azure (fintech).]

    - #strong[Modernização & IaC]: Atuação estratégica na transição de Cloud Services legados para containers (ACI e App Services). Todo o provisionamento padronizado via Terraform, eliminando drift de configuração e acelerando onboarding de novos ambientes.

    - #strong[FinOps]: Acompanhei e monitorei iniciativas de otimização de custos, incluindo redimensionamento de recursos ociosos e gestão de Reserved Instances (Reservations) no Azure e Databricks, contribuindo para a visibilidade financeira da nuvem.

    - #strong[CI\/CD & Automação]: Construção de pipelines de build e deploy no Azure DevOps para aplicações Kotlin, Go e Django com Docker e deploys Kubernetes via Helm. Automações para manutenção de agentes e atualização de bases de segurança (Dependency Check). POC com IA para automação de Code Review em Pull Requests.

    - #strong[Segurança & Observabilidade]: Adequação para conformidade PCI DSS e gestão do ciclo de vida de certificados SSL\/TLS em mais de 10 ambientes críticos (AKS, App Gateway, Cloud Services). Integração SAML via Entra ID com SonarQube. Monitoração contínua para garantia de alta disponibilidade.

    - #strong[Dados & Mensageria]: Migração de PostgreSQL (Single para Flexible Server) no Azure. Configuração do conector Debezium\/Kafka integrando SQL Server ao Elastic Cloud.

    - #strong[Redes & Conectividade]: Configuração de VPN Site-to-Site com parceiros, gestão de ExpressRoute e VPN Point-to-Site.

    - #strong[Gestão Operacional]: Administração multi-plataforma (Azure, AWS, Azure DevOps, Elastic Cloud, Kubernetes, SonarQube, MongoDB Atlas). Sustentação produtiva e participação ativa em ritos Scrum.

  ],
  [
    São Paulo, SP

    Jul 2024 – presente

  ],
)

#regular-entry(
  [
    #strong[SOLUTIS TECNOLOGIAS], ANALISTA DE DEVOPS

    #summary[Referência técnica de DevOps para múltiplos times, com foco em qualidade, agilidade e cumprimento de SLAs via ITIL.]

    - Atuei como ponto focal técnico de DevOps para múltiplos times de desenvolvimento, apoiando configuração de pipelines CI\/CD, criação de repositórios, integração com SonarQube e difusão da cultura DevOps.

    - Automatizei processos manuais críticos com PowerShell e Azure DevOps Server 2022, eliminando tarefas recorrentes e aumentando confiabilidade dos deploys.

    - Investigação de falhas e diagnóstico em aplicações em produção, garantindo disponibilidade e cumprimento de SLAs — tempo de resposta em incidentes P1 abaixo de 2h.

    - Domínio do Azure DevOps Server 2022 para gerenciar processos de desenvolvimento e ferramentas de DevOps em ambiente controlado por ITIL.

  ],
  [
    Salvador, BA

    Jun 2023 – Jun 2024

  ],
)

#regular-entry(
  [
    #strong[KUMULUS], ANALISTA CLOUD & DEVOPS

    #summary[Atuação em projetos de clientes variados, construindo infraestrutura cloud e automatizando entregas de software.]

    - Construí e mantive pipelines CI\/CD para stacks .Net Core, .Net Framework, NodeJS e Angular no Azure DevOps, GitHub Actions e GitLab CI\/CD, padronizando o processo de entrega entre projetos e reduzindo inconsistências entre ambientes.

    - Padronizei ambientes de desenvolvimento, homologação e produção via IaC (Bicep\/ARM Templates e Terraform), reduzindo tempo de provisionamento e drift de configuração.

    - Estruturei ambientes analíticos com Azure Data Factory, Synapse Analytics e Databricks para pipelines de dados e projetos de Data Science, acelerando o onboarding de novos projetos de analytics.

    - Implantação e evolução de infraestrutura Azure Cloud e suporte a versionamento Git para os times de desenvolvimento.

  ],
  [
    Campinas, SP

    Jun 2022 – Fev 2023

  ],
)

#regular-entry(
  [
    #strong[KROTON EDUCACIONAL], ENGENHEIRO DEVOPS

    #summary[Membro do System Team no framework SAFe, responsável por CI\/CD e IaC para mais de 100 repositórios e integração com 8+ ART teams.]

    - Criei e mantive pipelines CI\/CD para Docker, Kubernetes, .Net, NodeJS, Python, PHP, Gradle, Maven, SQL Server e PL\/SQL — cobrindo 100\% das tecnologias do portfólio e mais de 100 repositórios no Azure DevOps.

    - Provisionamento de ambientes Azure via ARM Templates e Terraform implementados via pipeline, reduzindo tempo de criação de ambientes de dias para horas.

    - Condução de consultoria de segurança e implementação de SAST (Checkmarx) e DAST (Acunetix) nos pipelines, alcançando cobertura de segurança em 100\% das aplicações críticas.

    - Atuação em estrutura SAFe de larga escala como membro do System Team, garantindo integração contínua entre 8+ Agile Release Trains.

  ],
  [
    São Paulo, SP

    Nov 2019 – Out 2021

  ],
)

#regular-entry(
  [
    #strong[KROTON EDUCACIONAL], ANALISTA DEVOPS

    - Implementei práticas DevOps em múltiplos times como membro do System Team (SAFe), gerenciando Azure DevOps (TFS2018\/VSTS) e automatizando deploys com PowerShell.

    - Configurei agentes de build Windows e Linux para TFS2018 e integrei pipelines ao SonarQube\/SonarCloud, estabelecendo quality gates para 30+ projetos.

    - Atuei como co-orientador de estágio, formando novos talentos e difundindo a cultura DevOps na organização.

  ],
  [
    Valinhos, SP

    Ago 2018 – Nov 2019

  ],
)

#regular-entry(
  [
    #strong[KROTON EDUCACIONAL], ESTÁGIO DEVOPS

    - Automatizei o processo de deploy on-premises com PowerShell e TFS2015\/TFS2018, eliminando deploys manuais e reduzindo erros de entrega.

    - Criei builds para .Net e PL\/SQL Oracle com análise de qualidade via SonarQube, estabelecendo a base do pipeline de CI que seria evoluído nos anos seguintes.

    - Gerenciei o ciclo de vida do desenvolvimento utilizando Visual Studio e TFS2015\/TFS2018, com suporte a versionamento e criação de branches.

  ],
  [
    Valinhos, SP

    Jul 2017 – Ago 2018

  ],
)

== Certificações

- #strong[#link("https://learn.microsoft.com/api/credentials/share/en-us/joaosouza/9660F77B9114B416?sharingId=F7B7E665059A29E2")[Microsoft Certified: DevOps Engineer Expert (AZ-400)]] #strong[(07\/2023 a 07\/2026)]

- #strong[#link("https://learn.microsoft.com/api/credentials/share/en-us/joaosouza/D7D6B5A081CD8300?sharingId=F7B7E665059A29E2")[Microsoft Certified: Azure Administrator Associate (AZ-104)]] #strong[(01\/2023 a 01\/2027)]

- #strong[#link("https://learn.microsoft.com/api/credentials/share/en-us/joaosouza/7EE61E852D2840A1?sharingId=F7B7E665059A29E2")[Microsoft Certified: Azure Fundamentals (AZ-900)]] #strong[(2020)]

- #strong[DevOps Essentials — 4Linux] #strong[(2021 — 20 horas)]

- #strong[#link("https://desenvolvedor.io/certificado/d27fd066-071a-458b-9a74-51dd9bf858fa")[Introdução ao DevOps — desenvolvedor.io]] #strong[(2020 — 40 horas)]

== Idiomas

#strong[Inglês:] Leitura intermediária, compreensão básica, conversação básica e escrita básica.

== Conhecimentos

#strong[Orquestração & Containers:] Kubernetes (AKS), Docker, Helm

#strong[Plataformas Cloud:] Azure Cloud (AKS, ACI, App Gateway, ExpressRoute, Entra ID, Databricks, Synapse, Data Factory), AWS

#strong[Infraestrutura como Código (IaC):] Terraform, Bicep, ARM Templates

#strong[CI\/CD & Automação:] Azure DevOps, GitHub Actions, GitLab CI\/CD

#strong[Linguagens de Programação & Scripting:] Python, PowerShell, Bash, YAML, JSON, HCL

#strong[Segurança, Compliance & Qualidade:] SonarQube, SAST (Checkmarx), DAST (Acunetix), PCI DSS, SSL\/TLS, SAML

#strong[Banco de Dados & Mensageria:] MongoDB Atlas, Elastic Cloud, Kafka, Debezium, PostgreSQL, SQL Server

#strong[Metodologias & Frameworks:] SAFe, SCRUM, Kanban, ITIL
