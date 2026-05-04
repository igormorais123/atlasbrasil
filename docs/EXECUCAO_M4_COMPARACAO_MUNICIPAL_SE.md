# Execução M4 leve - comparação municipal Sergipe

**Milestone:** M4 leve  
**Produto:** comparação pública entre city packs de Sergipe  
**Status:** primeira comparação criada, integrada e validada  
**Dependência anterior:** Aracaju e Itabaiana validadas  

## 1. Objetivo

Transformar city packs isolados em leitura comparativa: capital versus polo regional.

Primeira comparação:

- Aracaju: capital estadual, escala urbana maior, PIB corrente maior.
- Itabaiana: polo regional, menor escala, crescimento nominal recente mais forte.
- Lagarto: polo regional com população semelhante a Itabaiana e sinal nominal menor, útil para evitar ranking simplista.

## 2. Saída esperada

```text
data/states/SE/comparisons/aracaju-itabaiana.json
reports/sergipe/comparacao-aracaju-itabaiana.md
```

## 3. Perguntas

- O que Aracaju explica melhor que Itabaiana?
- O que Itabaiana explica melhor que Aracaju?
- Em qual cidade faz mais sentido investigar comércio regional?
- Em qual cidade faz mais sentido investigar serviços urbanos de capital?
- O que muda quando dois polos têm população parecida, mas sinais econômicos diferentes?
- Que dados faltam para transformar hipótese em recomendação?

## 4. Critérios

- Comparar apenas indicadores com mesma definição.
- Separar fato, proxy, inferência e simulação.
- Não criar ranking absoluto de "melhor cidade" sem domínio específico.
- Não recomendar investimento sem dados de demanda, concorrência, renda, fluxo e custo.

## 5. Próximo passo

Schema de comparação municipal criado e primeira comparação Aracaju versus Itabaiana publicada como pacote público.

Comparação integrada e validada no painel Atlas Sim estadual de Sergipe. A matriz agora inclui Aracaju, Itabaiana e Lagarto.

Próximo passo: preparar Estância como quarto município para introduzir eixo costeiro/interiorano.
