# Auditoria Atlas Sim - 2026-05-04

## Escopo

Auditoria da camada pública Atlas Sim em `http://localhost:8000/`.

Cobertura:

- validação JSON;
- sintaxe JavaScript;
- hashes de manifests;
- varredura de marcadores sensíveis;
- registry público;
- links markdown;
- endpoints locais;
- navegador in-app;
- Playwright desktop e mobile.

## Resultado

Status: aprovado para revisão humana e PR.

## Testes executados

- `scripts/validate-public.ps1`
- validação de consistência do `data/atlas-registry.json`
- validação de links markdown internos
- smoke test no in-app browser
- smoke test Playwright desktop
- smoke test Playwright mobile
- verificação de endpoints do registry, manifests, relatórios e pacotes opcionais

## Fluxos de navegador cobertos

- Sergipe: comparação municipal e matriz por domínio.
- Aracaju: triagem por domínio e farmácia.
- Itabaiana: triagem por domínio e curso técnico.
- Lagarto: triagem por domínio e clínica.
- Estância: triagem por domínio e risco alto.
- São Paulo: forecast ledger, clusters regionais e oportunidades.
- Campinas: triagem por domínio, curso técnico e carreira técnica.

## Achados corrigidos

### CSP em meta

O navegador apontou que `frame-ancestors` estava dentro de `<meta http-equiv="Content-Security-Policy">`. Essa diretiva é ignorada quando entregue por meta.

Correção: removida do meta CSP. Caso o projeto ganhe servidor próprio, `frame-ancestors` deve ser aplicado por header HTTP.

### Texto de estado vazio

O painel vazio dizia apenas "Selecione Sergipe", mas o Atlas Sim agora cobre Sergipe e São Paulo.

Correção: texto atualizado para "Selecione Sergipe ou São Paulo".

## Observação operacional

Após selecionar Sergipe, a busca municipal pode levar cerca de dois segundos para indexar cidades como Aracaju. A UI funciona, mas uma fase futura pode mostrar indicador explícito de carregamento de cidades.

## Parecer

A camada pública atual passou na auditoria técnica e de navegador. Não foram encontrados erros de console após as correções, nem marcadores sensíveis nos arquivos públicos versionáveis.
