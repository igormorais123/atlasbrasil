# Atlas Brasil

Site estático para análise territorial do Brasil em um globo interativo, começando por população de estados e municípios.

## Rodar localmente

Abra `index.html` diretamente no navegador ou sirva a pasta com qualquer servidor estático.

```text
http://localhost:8000/
```

O diretório `tools/` é reservado para utilitários locais e não faz parte do repositório versionado.

## Dados

- População: IBGE/SIDRA, tabela 4714, Censo Demográfico 2022.
- PIB territorial: IBGE/SIDRA, tabela 5938, Produto Interno Bruto a preços correntes.
- Malhas geográficas: API de Malhas Geográficas do IBGE.
- Localidades: API de Localidades do IBGE.
- Mapa base: MapLibre GL com OpenFreeMap e Esri World Imagery.

## Segurança e privacidade

- O projeto não usa chaves de API, autenticação, cookies ou coleta de dados do usuário.
- Dados exibidos vêm de APIs públicas.
- Dependências de CDN estão fixadas por versão quando possível.

## Plano de inteligência territorial

O PRD canônico da evolução Atlas Brasil x INTEIA está em [`docs/PRD_ATLAS_PARCEIRA_INTEIA.md`](docs/PRD_ATLAS_PARCEIRA_INTEIA.md).

O plano de execução está em [`docs/EXECUCAO_ATLAS_PARCEIRA_INTEIA.md`](docs/EXECUCAO_ATLAS_PARCEIRA_INTEIA.md).

O preparo operacional do piloto Sergipe está em [`docs/EXECUCAO_M1_SERGIPE.md`](docs/EXECUCAO_M1_SERGIPE.md).

O plano operacional da interface Atlas Sim está em [`docs/EXECUCAO_M2_ATLAS_SIM_UI.md`](docs/EXECUCAO_M2_ATLAS_SIM_UI.md).

A matriz pública de decisões por domínio em Sergipe está em [`docs/EXECUCAO_M6_MATRIZ_DOMINIOS_SE.md`](docs/EXECUCAO_M6_MATRIZ_DOMINIOS_SE.md).

O fechamento das próximas 10 fases, com São Paulo, Campinas, forecast ledger e contribuição pública, está em [`docs/EXECUCAO_M7_M16_PROXIMAS_FASES.md`](docs/EXECUCAO_M7_M16_PROXIMAS_FASES.md).

A etapa seguinte de escala paulista, oportunidades, clusters e forecast visível está em [`docs/EXECUCAO_M17_M26_PROXIMAS_FASES.md`](docs/EXECUCAO_M17_M26_PROXIMAS_FASES.md).

O fechamento público para PR está em [`docs/EXECUCAO_M27_M36_FECHAMENTO_PUBLICO.md`](docs/EXECUCAO_M27_M36_FECHAMENTO_PUBLICO.md), com parecer final em [`docs/PARECER_FECHAMENTO_PUBLICO.md`](docs/PARECER_FECHAMENTO_PUBLICO.md).

O registro de publicação do PR está em [`reports/PUBLICACAO_PR_ATLAS_SIM_2026-05-04.md`](reports/PUBLICACAO_PR_ATLAS_SIM_2026-05-04.md), e o guia de deploy estático está em [`docs/DEPLOY_ATLAS_STATIC.md`](docs/DEPLOY_ATLAS_STATIC.md).

O resumo visual em HTML para apresentar ao criador está em [`reports/ATLAS_SIM_OVERVIEW_CRIADOR.html`](reports/ATLAS_SIM_OVERVIEW_CRIADOR.html).

A estimativa de tokens, tempo e custo equivalente API está em [`reports/CUSTO_ESTIMADO_ATLAS_SIM_2026-05-04.md`](reports/CUSTO_ESTIMADO_ATLAS_SIM_2026-05-04.md).

A metodologia pública compartilhável da INTEIA está em [`docs/METODOLOGIA_PUBLICA_INTEIA.md`](docs/METODOLOGIA_PUBLICA_INTEIA.md).

O parecer final de validação e aprovação documental Helena/Efesto está em [`docs/PARECER_APROVACAO_EXECUCAO.md`](docs/PARECER_APROVACAO_EXECUCAO.md).

O plano para integrar metodologia INTEIA/Helena, Vox Sintética, agentes sintéticos e Paperclip sem expor artefatos privados está em [`docs/plano-inteligencia-inteia.md`](docs/plano-inteligencia-inteia.md).

O aprofundamento para SP, Sergipe e a camada pública de simulações "Atlas Sim" está em [`docs/plano-empoderamento-atlas-sp-se.md`](docs/plano-empoderamento-atlas-sp-se.md).

A integração metodológica das skills Helena e Oracle Gnosis ao Atlas está em [`docs/plano-helena-oracle-atlas.md`](docs/plano-helena-oracle-atlas.md).
