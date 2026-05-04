# Validação pré-execução - Atlas Brasil x INTEIA

**Data:** 2026-05-04  
**Status:** pronto para iniciar M1 com controle de publicação  
**Escopo validado:** documentação, schemas, segurança documental, estrutura pública inicial  

## 1. Resultado executivo

O pacote documental M0 está validado para iniciar a execução M1 do piloto público de Sergipe.

A execução aprovada é limitada a:

- dados oficiais públicos;
- pacotes estáticos sanitizados;
- coortes sintéticas agregadas;
- simulações auditáveis com disclaimer;
- relatórios com fonte, limite e red team;
- interface pública sem dependência de segredo.

Não está aprovado publicar:

- bases brutas;
- agentes individuais;
- prompts internos;
- memórias;
- logs;
- chaves;
- caminhos locais;
- clientes ou artefatos operacionais privados.

## 2. Observação sobre plugin solicitado

O plugin `superpowers` foi solicitado, mas não apareceu como ferramenta chamável nesta sessão.

Decisão de execução: não bloquear o projeto por dependência ausente. A preparação foi feita com os critérios já aprovados no parecer Helena/Efesto e com validação metodológica expressa via Helena POLARIS.

Quando `superpowers` estiver disponível, ele pode ser usado como verificador adicional, sem alterar a fronteira público/privado.

## 3. Validações realizadas

| Gate | Resultado |
|---|---|
| Schemas JSON em `docs/schemas/` | aprovado |
| Varredura de marcadores sensíveis em `README.md` e `docs/` | aprovado |
| Existência dos arquivos principais do app | aprovado |
| Parecer Helena/Efesto referenciado nos docs | aprovado |
| Próxima fase operacional definida | aprovado |

## 4. Evidência de prontidão

Schemas verificados:

- `atlas-research-protocol.schema.json`
- `atlas-state-pack.schema.json`
- `atlas-synthetic-cohort.schema.json`
- `atlas-simulation-pack.schema.json`

Arquivos principais do app encontrados:

- `index.html`
- `app.js`
- `style.css`

Documentos canônicos encontrados:

- `PRD_ATLAS_PARCEIRA_INTEIA.md`
- `EXECUCAO_ATLAS_PARCEIRA_INTEIA.md`
- `METODOLOGIA_PUBLICA_INTEIA.md`
- `PARECER_APROVACAO_EXECUCAO.md`

## 5. Riscos antes de executar M1

| Risco | Controle obrigatório |
|---|---|
| Publicar dado sem fonte | todo indicador deve apontar para fonte e data de acesso |
| Confundir simulação com pesquisa real | disclaimer obrigatório em todo simulation pack |
| Expor agente sintético individual | publicar somente arquétipos agregados |
| Pacote crescer demais | carregar data packs sob demanda |
| Conclusão forte sem sustentação | red team e nível de confiança obrigatórios |
| Misturar gerador privado com repo público | somente pacote sanitizado entra no Atlas |

## 6. Decisão

M0 está concluído como preparação documental.

M1 pode iniciar com o pacote público de Sergipe, desde que o executor siga:

1. checklist pré-execução;
2. plano M1;
3. schemas públicos;
4. parecer Helena/Efesto;
5. varredura de segurança antes de qualquer commit.

## 7. Próximo passo

Executar M1-01: definir o protocolo público de pesquisa de Sergipe e preencher `research-protocol.json` com pergunta, escopo, corpus, critérios de inclusão, critérios de exclusão, claims iniciais e limitações.
