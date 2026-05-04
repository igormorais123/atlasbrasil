# Dados publicos Atlas Sim

Este diretório contém somente pacotes públicos sanitizados.

## Registry

O índice canônico está em `atlas-registry.json`.

Ele aponta:

- estados disponíveis;
- cidades disponíveis;
- relatórios públicos;
- pacotes opcionais;
- status de publicação.

## Estados atuais

- `states/SE/`: Sergipe em profundidade.
- `states/SP/`: São Paulo em escala.

## Regra de publicação

Permitido:

- dados oficiais;
- métricas agregadas;
- coortes sintéticas agregadas;
- simulações sanitizadas;
- evidence ledgers;
- manifests;
- relatórios públicos.

Proibido:

- dados brutos privados;
- personas individuais;
- prompts internos;
- chaves;
- logs;
- caminhos locais;
- bases `.db`, `.sqlite`, `.jsonl`;
- artefatos de cliente.
