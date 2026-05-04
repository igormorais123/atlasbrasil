# Publicacao e PR - Atlas Sim

Data: 2026-05-04

## Repositorio

- Repositorio: `igormorais123/atlasbrasil`
- Remoto: `https://github.com/igormorais123/atlasbrasil`
- Branch base: `main`
- Branch publicada: `codex/atlas-sim-inteia-publica`
- Commit principal: `1a9da90 Add public Atlas Sim intelligence layer`
- Pull request: https://github.com/igormorais123/atlasbrasil/pull/1
- Estado do PR no momento da publicacao: aberto, draft, mergeable

## Escopo publicado

O PR adiciona a camada publica Atlas Sim / INTEIA ao Atlas Brasil:

- painel Atlas Sim no frontend;
- registry publico de pacotes;
- pacotes estaduais de Sergipe e Sao Paulo;
- city packs de Aracaju, Itabaiana, Lagarto, Estancia e Campinas;
- evidence ledgers;
- manifests com hashes;
- coortes sinteticas agregadas;
- simulacoes territoriais e de dominio;
- matriz de decisoes por dominio em Sergipe;
- clusters regionais e opportunity cards em Sao Paulo;
- forecast ledger publico;
- schemas JSON;
- metodologia publica e PRD;
- relatorios publicos;
- auditoria tecnica e de navegador;
- script de validacao publica;
- template de pull request.

## Validacoes realizadas antes do PR

- `scripts/validate-public.ps1`
- `node --check app.js`
- `git diff --check`
- auditoria no in-app browser;
- auditoria Playwright desktop/mobile;
- verificacao de endpoints locais;
- verificacao de links markdown;
- verificacao de consistencia do `data/atlas-registry.json`;
- verificacao de manifests e hashes.

## Deploy

Deploy automatico nao foi executado porque o repositorio nao tinha GitHub Pages habilitado no momento da verificacao.

Resultado da API de Pages:

```text
404 Not Found
```

Decisao: nao habilitar Pages automaticamente sem revisao humana, porque isso altera configuracao publica do repositorio.

## Proximo passo recomendado

1. Revisar o PR #1.
2. Remover draft quando estiver aprovado.
3. Fazer merge em `main`.
4. Habilitar GitHub Pages ou configurar workflow de deploy estatico conforme `docs/DEPLOY_ATLAS_STATIC.md`.

## Parecer

Publicacao tecnica concluida. O PR esta pronto para revisao humana.
