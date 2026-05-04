# Execucao M6 - Matriz de decisoes por dominio em Sergipe

## Objetivo

Consolidar as triagens municipais de Aracaju, Itabaiana, Lagarto e Estancia em uma matriz publica que compare dominios de decisao: farmacia, padaria, clinica, curso tecnico e carreira tecnica.

## Entregaveis

- Schema publico `atlas-domain-comparison.schema.json`.
- Pacote `data/states/SE/comparisons/domain-screening-4cities.json`.
- Relatorio `reports/sergipe/triagem-dominio-4cidades.md`.
- Bloco visual no painel Atlas Sim estadual.

## Criterios de aceite

- O painel de Sergipe mostra a matriz de dominios.
- Cada dominio tem cidade lider, postura e pontuacoes por cidade.
- O texto deixa claro que a saida e triagem investigativa, nao recomendacao financeira.
- JSON, sintaxe JavaScript e navegador local passam em validacao.

## Gate Helena/Efesto publico

Parecer: aprovado para execucao publica.

Condicoes:

- manter dados privados fora do repo;
- declarar limites e dados faltantes;
- evitar promessa de previsao ilimitada;
- tratar poder preditivo como capacidade testavel, auditavel e calibrada por dados.
