# Estimativa de custo e tokens - Atlas Sim

Data: 2026-05-04

## Resumo

Nao foi encontrado um contador local confiavel de tokens totais da sessao. Portanto, este documento registra uma estimativa auditavel, baseada em:

- tamanho do produto final;
- volume de iteracoes, leituras, testes e documentacao;
- preco oficial de referencia do GPT-5.5 API;
- tempo decorrido entre o primeiro pacote publico gerado e o fechamento visual.

## Base observavel no repositorio

- Arquivos no diff do PR: 116.
- Linhas aproximadas adicionadas/tocadas: 15.033.
- Caracteres aproximados dos arquivos finais: 507.098.
- Palavras aproximadas dos arquivos finais: 53.111.
- Tokens estimados do artefato final: 72.000 a 127.000.

## Tempo

- Primeiro pacote publico registrado: 2026-05-04T05:57:54Z.
- Fechamento visual local: 2026-05-04T16:21:21-03:00.
- Tempo decorrido aproximado: 13,4 horas.

Esse numero e tempo de relogio. O tempo ativo humano/IA e menor, porque inclui esperas, validacoes, testes e ciclos de publicacao.

## Estimativa de tokens de trabalho

Faixa usada:

- Input/contexto: 1,2M a 2,2M tokens.
- Output + raciocinio/saidas: 250k a 450k tokens.
- Total estimado: 1,45M a 2,65M tokens.

Motivo da faixa:

- o produto final tem cerca de 72k-127k tokens;
- a sessao envolveu muitas leituras de arquivo, outputs de terminal, auditoria de navegador e revisoes;
- modelos de raciocinio tambem consomem tokens internos/saida que nao aparecem como texto final;
- nao ha medidor oficial local para fechar o numero exato.

## Preco de referencia

Preco oficial consultado em 2026-05-04 na pagina de pricing da OpenAI:

- GPT-5.5 input: US$ 5,00 / 1M tokens;
- GPT-5.5 cached input: US$ 0,50 / 1M tokens;
- GPT-5.5 output: US$ 30,00 / 1M tokens.

Fonte: https://openai.com/api/pricing/

## Custo equivalente API

### Sem cache

- Baixo: 1,2M input * US$5 + 250k output * US$30 = US$ 13,50.
- Alto: 2,2M input * US$5 + 450k output * US$30 = US$ 24,50.

Faixa sem cache: US$ 14-25.

### Com cache parcial

Assumindo 60%-70% de input repetido/cached:

- Baixo aproximado: US$ 10.
- Alto aproximado: US$ 18.

Faixa com cache parcial: US$ 10-18.

## Conversao aproximada para BRL

Com USD/BRL perto de 4,98, a faixa fica aproximadamente:

- US$ 10-25;
- R$ 50-125.

Fonte de cambio consultada: resultado publico de USD/BRL em torno de 4,98 no dia da estimativa.

## Interpretacao correta

Este valor e custo equivalente de API, nao cobranca real garantida do Codex/ChatGPT.

O custo real pode variar por:

- cache efetivo;
- plano da plataforma;
- politica de contabilizacao;
- ferramentas usadas;
- raciocinio interno;
- retries;
- contexto compactado;
- eventuais creditos ou subscricao.

## Como apresentar ao criador

Mensagem recomendada:

> A entrega agregou cerca de 116 arquivos e 15 mil linhas, com uma estimativa de 1,45M-2,65M tokens de trabalho. Em GPT-5.5 API isso equivaleria a algo na ordem de US$ 10-25, ou cerca de R$ 50-125, dependendo de cache e contabilizacao real.
