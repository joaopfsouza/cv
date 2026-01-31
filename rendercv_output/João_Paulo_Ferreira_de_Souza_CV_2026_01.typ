// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "João Paulo Ferreira de Souza",
  footer: context { [#emph[João Paulo Ferreira de Souza -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Última atualização Jan 2026] ],
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
    month: 1,
    day: 31,
  ),
)


= João Paulo Ferreira de Souza

#connections(
  [#connection-with-icon("location-dot")[Itapecerica da Serra, SP]],
  [#link("mailto:joao.ferreiradesouza@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[joao.ferreiradesouza\@gmail.com]]],
  [#link("tel:+55-11-91921-5622", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[(11) 91921-5622]]],
  [#link("https://linkedin.com/in/joaopfsouza", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[joaopfsouza]]],
)


== Resumo

Engenheiro DevOps graduado em Engenharia Elétrica pela UNESP Bauru , com mais de 7 anos de experiência na otimização de processos, automação de tarefas e promoção da cultura DevOps em equipes ágeis. Especialista na gestão de ambientes complexos em Kubernetes (AKS), AWS e Azure, com foco em alta disponibilidade, escalabilidade e entrega contínua de valor.

Possui sólido domínio em Infraestrutura como Código (IaC) utilizando Terraform, Bicep e ARM Templates , além de ampla experiência na implementação de pipelines CI\/CD via Azure DevOps, GitLab e GitHub Actions. Atua na automação de processos com PowerShell, Shell Script e Python , integrando práticas de qualidade e segurança (SonarQube, SAST\/DAST) ao ciclo de vida de software.

Com vivência em metodologias ágeis como SCRUM, Kanban, SAFe e no framework ITIL, detém as certificações Microsoft Certified: DevOps Engineer Expert (AZ-400) e Azure Administrator Associate (AZ-104). Apaixonado por solucionar problemas e garantir a qualidade de entregas contínuas, buscando contribuir para o sucesso de projetos inovadores.

== Objetivo

Contribuir para o sucesso de equipes como Engenheiro DevOps.

== Formação

#education-entry(
  [
    #strong[Universidade Estadual Paulista (UNESP)], Engenharia Elétrica

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

    - #strong[Gestão Multi-cloud]: Administração de ambientes Azure, AWS, Kubernetes (AKS), MongoDB Atlas e Elastic Cloud.

    - #strong[Infraestrutura como Código (IaC)]: Construção e padronização de ambientes globais utilizando Terraform.

    - #strong[Modernização]: Migração de Cloud Services legados para Azure Container Instances (ACI) e App Service via containers.

    - #strong[FinOps]: Redução de 12\% no custo global da Azure e 36\% em Databricks através de Reserved Instances e otimização de recursos.

    - #strong[CI\/CD & Automação]: Desenvolvimento de pipelines no Azure DevOps para stacks Kotlin, Go e Django, com deploys via Helm.

    - #strong[Redes & Conectividade]: Configuração de VPN Site-to-Site com parceiros, gestão de ExpressRoute e VPN Point-to-Site.

    - #strong[Dados & Mensageria]: Migração de PostgreSQL (Single para Flexible Server) e integração Debezium\/Kafka com SQL Server e Elastic Cloud.

    - #strong[Segurança & Compliance]: Apoio técnico para certificação PCI DSS, gestão de certificados SSL\/TLS e integração SAML (Entra ID).

    - #strong[Inovação]: Implementação de POC com IA para automação de Code Review em fluxos de Pull Request.

  ],
  [
    São Paulo, SP

    Jul 2024 – presente

  ],
)

#regular-entry(
  [
    #strong[SOLUTIS TECNOLOGIAS], ANALISTA DE DEVOPS

    - Implementei soluções DevOps com foco em qualidade e agilidade, utilizando o framework ITIL para garantir o cumprimento de SLAs.

    - Forneci suporte técnico de alto nível para configuração de pipelines CI\/CD, criação de repositórios, integração com SonarQube e difusão da cultura DevOps.

    - Realizei a investigação de falhas e o diagnóstico de problemas em aplicações, garantindo a disponibilidade e o bom funcionamento dos sistemas.

    - Domínio do Azure DevOps Server 2022 para gerenciar os processos de desenvolvimento e as ferramentas de DevOps.

    - Automatizei processos manuais usando script powershell e pipelines em Azure DevOps Server 2022.

  ],
  [
    Salvador, BA

    Jun 2023 – Jun 2024

  ],
)

#regular-entry(
  [
    #strong[KUMULUS], ANALISTA CLOUD & DEVOPS

    - Construí pipelines CI\/CD para diversas tecnologias, incluindo .Net Core, .Net Framework, NodeJs e Angular.

    - Experiência com Infraestrutura como Código (IaC) utilizando Bicep\/ARM Template e Terraform.

    - Construção de ambientes para Engenharia de Dados com Datafactory, Synapses e Databricks.

    - Criando infraestrutura cloud Azure.

  ],
  [
    Campinas, SP

    Jun 2022 – Fev 2023

  ],
)

#regular-entry(
  [
    #strong[KROTON EDUCACIONAL], ENGENHEIRO DEVOPS

    - Otimizei os processos de desenvolvimento com o gerenciamento do Azure DevOps.

    - Criei pipelines de CI\/CD para diversas tecnologias, incluindo Docker, Kubernetes, .Net Core, .Net Framework, NodeJS, Python, Gradle, Maven, PHP, SQL Server e PL\/SQL.

    - Experiência em Infraestrutura como Código utilizando ARM Template e Terraform para Azure Cloud, implementados via pipeline no Azure DevOps.

    - Participação em consultoria de segurança para implementação de SAST (Checkmarx)\/DAST (Acunetix) nos pipelines das aplicações.

    - Experiência com metodologias ágeis como SAFe e SCRUM.

  ],
  [
    São Paulo, SP

    Nov 2019 – Out 2021

  ],
)

#regular-entry(
  [
    #strong[KROTON EDUCACIONAL], ANALISTA DEVOPS

    - Implementei práticas DevOps em diversos times como membro do System Team, uma equipe ágil do framework SAFe.

    - Gerenciei o Azure DevOps (TFS2018\/VSTS), construindo pipelines de CI\/CD e automatizando o processo com scripts PowerShell.

    - Configurei servidores de build Windows e Linux para o TFS2018 e integrei os pipelines ao SonarQube\/SonarCloud para análise de código.

    - Compartilhei minhas experiências como co-orientador de estágio, contribuindo para a formação de novos talentos na área de DevOps.

  ],
  [
    Valinhos, SP

    Ago 2018 – Nov 2019

  ],
)

#regular-entry(
  [
    #strong[KROTON EDUCACIONAL], ESTÁGIO DEVOPS

    - Auxiliei na geração de builds, versionamento de código, criação de branches e liberação de permissões, contribuindo para a otimização do processo de desenvolvimento.

    - Implementei processo de automação de deploy em ambiente on premises, garantindo maior velocidade, qualidade e confiabilidade no processo de entrega de software.

    - Criei builds para tecnologias .Net e PL\/SQL Oracle, utilizando SonarQube para análise de qualidade de código.

    - Automatizei o fluxo de trabalho com scripts em PowerShell.

    - Gerenciei o ciclo de vida do desenvolvimento de software utilizando ferramentas como Visual Studio e TFS2015\/TFS2018 (Team Foundation Server).

  ],
  [
    Valinhos, SP

    Jul 2017 – Ago 2018

  ],
)

== Certificações

- #strong[#link("https://learn.microsoft.com/api/credentials/share/en-us/joaosouza/9660F77B9114B416?sharingId=F7B7E665059A29E2")[Microsoft Certified: DevOps Engineer Expert (AZ-400)]] #strong[(07\/2023 a 07\/2026)]

- #strong[#link("https://learn.microsoft.com/api/credentials/share/en-us/joaosouza/D7D6B5A081CD8300?sharingId=F7B7E665059A29E2")[Microsoft Certified: Azure Administrator Associate (AZ-104)]] #strong[(01\/2023 a 01\/2027)]

- #strong[DevOps Essentials oferecido - 4Linux] #strong[(2021 - 20 horas)]

- #strong[#link("https://learn.microsoft.com/api/credentials/share/en-us/joaosouza/7EE61E852D2840A1?sharingId=F7B7E665059A29E2")[Microsoft Certified: Azure Fundamentals (AZ-900)]] #strong[(2020)]

- #strong[#link("https://desenvolvedor.io/certificado/d27fd066-071a-458b-9a74-51dd9bf858fa")[Introdução ao DevOps - desenvolvedor.io]] #strong[(2020 - 40 horas)]

== Idiomas

#strong[Inglês:] Leitura intermediária, compreensão básica, conversação básica e escrita básica.

== Conhecimentos

#strong[Linguagens de Programação & Scripting:] Python, PowerShell, Bash, YAML, JSON, HCL

#strong[Plataformas Cloud:] Azure Cloud, AWS

#strong[Orquestração & Containers:] Kubernetes (AKS), Docker, Helm

#strong[Infraestrutura como Código (IaC):] Terraform, Bicep, ARM Templates

#strong[CI\/CD & Automação:] Azure DevOps, GitHub Actions, GitLab CI\/CD

#strong[Banco de Dados & Monitoramento:] MongoDB Atlas, Elastic Cloud

#strong[Segurança, Compliance & Qualidade:] SAST\/DAST, SonarQube

#strong[Metodologias & Frameworks:] SAFe, SCRUM, Kanban, ITIL
