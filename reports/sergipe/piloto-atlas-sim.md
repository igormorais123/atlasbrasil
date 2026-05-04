# Piloto Atlas Sim - Sergipe

**Status:** primeira versão pública M1  
**Data:** 2026-05-04  
**Escopo:** Sergipe, nível estadual  

## Pergunta

Sergipe melhorou, piorou, estabilizou ou permanece inconclusivo nos ciclos públicos disponíveis, considerando população, estrutura municipal, PIB corrente e oportunidades territoriais iniciais?

## Resposta curta

Nesta primeira versão pública, o veredito deve permanecer **inconclusivo**.

Os dados oficiais coletados já permitem abrir o Atlas Sim para Sergipe, mas ainda não sustentam uma conclusão ampla sobre melhora ou piora do território. População, PIB corrente e número de municípios são uma fundação; o próximo passo é incorporar séries de saúde, educação, trabalho, renda e segurança.

## Evidências usadas

| Indicador | Valor | Ano | Fonte |
|---|---:|---:|---|
| População residente | 2.210.004 pessoas | 2022 | IBGE/SIDRA 4714 |
| PIB corrente | R$ 60.816.662.000 | 2023 | IBGE/SIDRA 5938 |
| Municípios | 75 | 2026 | IBGE Localidades |
| PIB corrente por habitante | R$ 27.518,80 | 2023 | Cálculo Atlas com PIB 2023 e população 2022 |
| Crescimento nominal do PIB | 6,0% | 2022-2023 | Cálculo Atlas com SIDRA 5938 |

## Diagnóstico inicial

### Forças

- Sergipe é pequeno o suficiente para piloto de profundidade.
- A estrutura com 75 municípios permite evoluir para pacotes municipais auditáveis.
- A série de PIB corrente do SIDRA está disponível desde 2002.

### Fraquezas

- O pacote ainda não inclui séries oficiais de saúde, educação, trabalho, renda e segurança.
- PIB corrente não mede inflação, distribuição de renda ou bem-estar.
- O nível estadual pode esconder diferenças entre capital, litoral, agreste e sertão.

### Oportunidades

- Demonstrar a metodologia pública INTEIA sem expor o motor privado.
- Criar city packs para Aracaju e municípios-polo.
- Testar recomendações de negócio e carreira depois de incluir indicadores setoriais.

### Riscos

- Tratar crescimento nominal como melhora social.
- Apresentar simulação sintética como pesquisa real.
- Publicar conclusões fortes sem red team.

## Simulação territorial base

A simulação `se-territorial-base-001` sugere usar Sergipe como piloto de profundidade, mantendo o veredito inconclusivo até a incorporação de séries setoriais.

Scores iniciais:

- maturidade do pacote M1: 42/100;
- saúde territorial inicial: 52/100;
- cobertura inicial de evidência: 35/100.

Esses scores são heurísticos e servem para orientar investigação. Eles não são indicadores oficiais.

## Red team

Hipótese contrária 1: o crescimento nominal do PIB poderia indicar melhora.

Resposta: pode indicar expansão corrente, mas não prova melhora real, pois não desconta inflação nem mostra distribuição de renda.

Hipótese contrária 2: o estado ser pequeno poderia tornar a leitura simples demais.

Resposta: o tamanho reduz complexidade operacional, mas não elimina diferenças internas. Por isso a próxima etapa deve abrir municípios-polo.

## Limites

- Este relatório não usa bases privadas.
- Este relatório não publica agentes individuais.
- Este relatório não é pesquisa de campo.
- Este relatório não faz previsão eleitoral.
- Este relatório não recomenda investimento específico sem dados municipais e setoriais.

## Próximos passos

1. Adicionar séries públicas de saúde, educação, trabalho, renda e segurança.
2. Criar primeiro city pack de Aracaju.
3. Integrar o painel Atlas Sim ao app.
4. Testar carregamento sob demanda dos data packs.
5. Rodar nova validação de segurança antes de publicar.
