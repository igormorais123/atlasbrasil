# Execução M2 - Atlas Sim UI

**Milestone:** M2  
**Produto:** camada visual Atlas Sim consumindo pacotes públicos estáticos  
**Status:** iniciada com painel mínimo validado  
**Dependência anterior:** M1 Sergipe em `draft_validated`  

## 1. Resultado já entregue

A primeira integração pública do Atlas Sim foi criada no painel lateral do app.

Comportamento atual:

- usuário seleciona Sergipe;
- app carrega `data/states/SE/*` sob demanda;
- painel mostra veredito territorial, confiança, score, indicadores, forças, riscos, resumo de simulação, evidências e coortes agregadas;
- estados sem pacote exibem mensagem clara;
- Brasil sem UF selecionada exibe orientação para selecionar Sergipe.

## 2. Arquivos tocados

- `index.html`
- `atlas-sim.css`
- `style.css`
- `app.js`
- `data/states/SE/state-pack.json`
- `data/states/SE/synthetic-cohort-pack.json`
- `data/states/SE/evidence-ledger.json`
- `data/states/SE/simulations/territorial-base.json`
- `data/states/SE/manifest.json`
- `reports/sergipe/piloto-atlas-sim.md`

## 3. Validações executadas

| Validação | Resultado |
|---|---|
| Sintaxe JavaScript | aprovado |
| JSON dos pacotes | aprovado |
| Hashes do manifest | aprovado |
| Varredura de marcadores sensíveis | aprovado |
| Servidor local | aprovado |
| Teste de navegador com Sergipe | aprovado |

## 4. Próximas melhorias M2

| ID | Ação | Resultado esperado |
|---|---|---|
| M2-01 | Destacar visualmente UFs com pacote Atlas Sim | implementado para Sergipe |
| M2-02 | Criar aba/filtro Atlas Sim em `data-analysis` | camada passa a ser modo analítico completo |
| M2-03 | Mostrar evidence ledger expandível | usuário vê claim, fonte, confiança e limite |
| M2-04 | Mostrar disclaimer persistente de simulação | implementado na primeira UI pública |
| M2-05 | Adicionar links para relatório público | painel aponta para o relatório Sergipe |
| M2-06 | Validar responsividade mobile com screenshot | validado em desktop e mobile |

## 5. Gates antes de fechar M2

- painel funciona em desktop e mobile;
- nenhum texto vaza para fora do container;
- Sergipe carrega sem bloquear mapa;
- falha de fetch é tratada;
- app continua útil para UFs sem pacote;
- evidence ledger fica auditável;
- testes de navegador passam.

## 6. Fechamento M2 mínima

Status atual: M2 mínima validada.

A interface pública já carrega o pacote Sergipe, mostra disclaimer, evidence ledger, relatório e destaque visual da UF com pacote Atlas Sim. A próxima evolução deve preparar expansão para Aracaju antes de escalar São Paulo.
