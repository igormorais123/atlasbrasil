# Execucao M17-M26 - Escala paulista, oportunidades e previsao publica

## M17 - Schemas de escala

Entregue:

- `atlas-regional-clusters.schema.json`;
- `atlas-forecast-ledger.schema.json`;
- `atlas-opportunity-cards.schema.json`.

## M18 - Comparacao paulista por cidades

Entregue:

- `data/states/SP/comparisons/city-scale-quartet.json`;
- `reports/sao-paulo/comparacao-cidades-escala.md`.

## M19 - Opportunity cards publicos

Entregue:

- `data/states/SP/opportunity-cards.json`.

## M20 - Forecast visivel

Objetivo: expor poder preditivo como pergunta verificavel, nao como certeza.

Entregue:

- painel estadual passa a renderizar forecast ledger quando disponivel.

## M21 - Clusters visiveis

Objetivo: impedir que SP seja lido como media unica.

Entregue:

- painel estadual passa a renderizar clusters regionais quando disponiveis.

## M22 - Cards de oportunidade visiveis

Objetivo: levar negocio, carreira e produto para triagem publica.

Entregue:

- cards de oportunidade aparecem no painel estadual quando disponiveis.

## M23 - Gate de linguagem

Objetivo: evitar recomendacao indevida.

Entregue:

- disclaimers em cards, forecasts e comparacoes.

## M24 - Gate de fonte

Objetivo: manter rastreabilidade.

Entregue:

- todos os numeros factuais da comparacao paulista apontam para IBGE/SIDRA.

## M25 - Gate de performance

Objetivo: testar painel multiestado sem backend.

Entregue:

- SP carrega sob demanda no mesmo fluxo de Sergipe.

## M26 - Preparacao de revisao

Objetivo: deixar a proxima camada pronta para revisao humana e PR.

Entregue:

- JSON validado;
- app validado no navegador;
- docs e README atualizados.

## Parecer

Helena: aprovado como evolucao metodologica publica com incerteza declarada.

Efesto: aprovado como implantacao estatica controlada, pendente apenas de revisao humana final antes de PR.
