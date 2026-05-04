# Piloto de escala - São Paulo

## Pergunta

Como testar São Paulo no Atlas Sim sem transformar escala econômica em diagnóstico social conclusivo?

## Leitura executiva

São Paulo entra como segundo estado público do Atlas Sim para testar escala. O pacote inicial confirma grande população, alto PIB corrente e 645 municípios, mas mantém veredito inconclusivo.

O valor desta fase é técnico e metodológico:

- carregar estado grande sob demanda;
- separar capital, interior, litoral, indústria, logística e agro-serviços;
- preparar city packs fora da capital;
- impedir que o volume econômico substitua análise setorial.

## Dados usados

- População residente 2022: 44.411.238 pessoas.
- PIB corrente 2023: R$ 3.444.814.033.000.
- Municípios: 645.

Fontes: IBGE/SIDRA e API de Localidades do IBGE.

## Red team

- PIB nominal não mede bem-estar.
- Média estadual não mostra desigualdade regional.
- Capital pode dominar a leitura do estado.
- O pacote ainda não tem emprego formal, renda, saúde, educação, segurança, orçamento e custo de vida.

## Decisão

Aprovado para piloto público como teste de escala, com veredito inconclusivo e exigência de clusters regionais.
