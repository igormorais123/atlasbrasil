# Documentação Atlas Brasil x INTEIA

Esta pasta contém a documentação de evolução do Atlas Brasil como vitrine pública de uma parte compartilhável da tecnologia INTEIA.

## Documentos canônicos

| Documento | Função |
|---|---|
| [`PRD_ATLAS_PARCEIRA_INTEIA.md`](PRD_ATLAS_PARCEIRA_INTEIA.md) | PRD principal do produto Atlas Brasil x INTEIA |
| [`EXECUCAO_ATLAS_PARCEIRA_INTEIA.md`](EXECUCAO_ATLAS_PARCEIRA_INTEIA.md) | Plano de implementação por fases, tarefas e critérios de aceite |
| [`EXECUCAO_M1_SERGIPE.md`](EXECUCAO_M1_SERGIPE.md) | Plano operacional para executar o piloto público de Sergipe |
| [`EXECUCAO_M2_ATLAS_SIM_UI.md`](EXECUCAO_M2_ATLAS_SIM_UI.md) | Plano operacional da interface Atlas Sim |
| [`EXECUCAO_M3_ARACAJU.md`](EXECUCAO_M3_ARACAJU.md) | Preparação do primeiro pacote municipal público |
| [`EXECUCAO_M4_COMPARACAO_MUNICIPAL_SE.md`](EXECUCAO_M4_COMPARACAO_MUNICIPAL_SE.md) | Preparação da comparação municipal em Sergipe |
| [`EXECUCAO_M5_SIMULADORES_DOMINIO.md`](EXECUCAO_M5_SIMULADORES_DOMINIO.md) | Preparação dos simuladores de farmácia, padaria, clínica e cursos |
| [`EXECUCAO_M6_MATRIZ_DOMINIOS_SE.md`](EXECUCAO_M6_MATRIZ_DOMINIOS_SE.md) | Matriz comparativa de decisões por domínio em Sergipe |
| [`EXECUCAO_M7_M16_PROXIMAS_FASES.md`](EXECUCAO_M7_M16_PROXIMAS_FASES.md) | Fechamento das 10 fases seguintes: SP, Campinas, forecast e contribuição |
| [`EXECUCAO_M17_M26_PROXIMAS_FASES.md`](EXECUCAO_M17_M26_PROXIMAS_FASES.md) | Escala paulista, oportunidades, clusters e forecast visível |
| [`EXECUCAO_M27_M36_FECHAMENTO_PUBLICO.md`](EXECUCAO_M27_M36_FECHAMENTO_PUBLICO.md) | Fechamento público para PR: registry, manifests, validação e checklist |
| [`METODOLOGIA_PUBLICA_INTEIA.md`](METODOLOGIA_PUBLICA_INTEIA.md) | Método público: evidência, claims, simulações, poder preditivo e gates |
| [`PARECER_APROVACAO_EXECUCAO.md`](PARECER_APROVACAO_EXECUCAO.md) | Parecer final de validação e aprovação documental Helena/Efesto |
| [`PARECER_FECHAMENTO_PUBLICO.md`](PARECER_FECHAMENTO_PUBLICO.md) | Parecer final Helena/Efesto para revisão humana e PR |
| [`VALIDACAO_PRE_EXECUCAO.md`](VALIDACAO_PRE_EXECUCAO.md) | Registro de validação pré-execução e decisão de iniciar M1 |

## Planos de apoio

| Documento | Função |
|---|---|
| [`plano-inteligencia-inteia.md`](plano-inteligencia-inteia.md) | Primeira consolidação de como a tecnologia INTEIA entra no Atlas |
| [`plano-empoderamento-atlas-sp-se.md`](plano-empoderamento-atlas-sp-se.md) | Aprofundamento em Sergipe, São Paulo e Atlas Sim |
| [`plano-helena-oracle-atlas.md`](plano-helena-oracle-atlas.md) | Integração metodológica de Helena e Oracle Gnosis |
| [`FORECAST_LEDGER_PUBLICO.md`](FORECAST_LEDGER_PUBLICO.md) | Regra pública para previsões verificáveis |
| [`CONTRIBUTING_ATLAS_PACKS.md`](CONTRIBUTING_ATLAS_PACKS.md) | Guia seguro de contribuição com pacotes Atlas Sim |
| [`DEPLOY_ATLAS_STATIC.md`](DEPLOY_ATLAS_STATIC.md) | Guia de deploy estático seguro para GitHub Pages, Vercel ou Netlify |

## Schemas públicos

Os contratos JSON ficam em [`schemas/`](schemas/). Eles definem os pacotes estáticos que o Atlas pode consumir sem expor a operação privada da INTEIA.

Contratos atuais:

- `atlas-state-pack.schema.json`
- `atlas-city-pack.schema.json`
- `atlas-city-comparison.schema.json`
- `atlas-domain-comparison.schema.json`
- `atlas-domain-screening.schema.json`
- `atlas-forecast-ledger.schema.json`
- `atlas-opportunity-cards.schema.json`
- `atlas-regional-clusters.schema.json`
- `atlas-synthetic-cohort.schema.json`
- `atlas-simulation-pack.schema.json`
- `atlas-research-protocol.schema.json`

## Preparação M1

- Checklist: [`checklists/CHECKLIST_PRE_EXECUCAO_M1.md`](checklists/CHECKLIST_PRE_EXECUCAO_M1.md)
- Templates de pacote: [`templates/ATLAS_PACK_TEMPLATES.md`](templates/ATLAS_PACK_TEMPLATES.md)
- Estrutura pública inicial: [`../data/states/SE/`](../data/states/SE/), [`../data/states/SP/`](../data/states/SP/), [`../reports/sergipe/`](../reports/sergipe/) e [`../reports/sao-paulo/`](../reports/sao-paulo/)

## Regra de publicação

O repo público recebe metodologia, schemas, dados oficiais, coortes agregadas, simulações sanitizadas, relatórios reproduzíveis e visualizações.

O repo público não recebe bases brutas, prompts internos, logs, memórias, chaves, clientes privados, caminhos locais, outputs não revisados ou agentes individuais.
