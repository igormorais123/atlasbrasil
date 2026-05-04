# Deploy estatico do Atlas Brasil

O Atlas atual e um site estatico. Nao ha `package.json`, build step ou pipeline de deploy configurado.

## Opcoes recomendadas

### Opcao A - GitHub Pages

Uso indicado quando o objetivo e publicar diretamente o conteudo de `main`.

Configuracao sugerida:

- Source: branch `main`
- Folder: `/`
- URL esperada: `https://igormorais123.github.io/atlasbrasil/`

Antes de habilitar:

- revisar e fazer merge do PR;
- confirmar que nenhum dado privado entrou;
- rodar `scripts/validate-public.ps1`;
- abrir `index.html` localmente ou servir `http://localhost:8000/`.

### Opcao B - GitHub Actions Pages

Uso indicado quando for desejavel automatizar validacao antes do publish.

Workflow futuro recomendado:

1. checkout;
2. rodar `scripts/validate-public.ps1`;
3. publicar artefato estatico;
4. deploy Pages.

### Opcao C - Vercel ou Netlify

Uso indicado quando for desejavel preview por PR.

Configuracao:

- framework: static;
- build command: vazio;
- output directory: raiz do repositorio;
- variaveis de ambiente: nenhuma.

## Bloqueios de deploy

Nao publicar se qualquer item abaixo aparecer no diff:

- `.env`;
- chave, token ou credencial;
- caminho local;
- persona bruta;
- log;
- banco `.db`, `.sqlite`;
- arquivo `.jsonl`;
- dados privados em `data/` ou `reports/`.

## Validacao minima antes do deploy

```powershell
powershell -ExecutionPolicy Bypass -File scripts\validate-public.ps1
```

Teste manual:

1. Abrir `http://localhost:8000/`.
2. Buscar `Sergipe`.
3. Confirmar matriz por dominio.
4. Buscar `Sao Paulo`.
5. Confirmar forecast ledger, clusters e oportunidades.
6. Buscar `Campinas`.
7. Confirmar triagem por dominio.

## Observacao sobre CSP

`frame-ancestors` nao deve ser configurado via `<meta http-equiv="Content-Security-Policy">`, porque navegadores ignoram essa diretiva em meta.

Se for necessario impedir iframe embedding em producao, configurar por header HTTP no servidor/CDN.
