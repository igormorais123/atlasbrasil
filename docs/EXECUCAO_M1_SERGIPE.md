# Execução M1 - Piloto público Sergipe

**Milestone:** M1  
**Produto:** pacote Sergipe estático para Atlas Sim  
**Status:** primeira versão executada em modo `draft_validated`  
**Dependência anterior:** M0 aprovado  

## 1. Contrato de tarefa

### Objetivo

Criar o primeiro pacote público completo do Atlas Brasil x INTEIA para Sergipe, com dados oficiais, diagnóstico territorial, coortes sintéticas agregadas, simulação auditável e relatório público.

### Saídas obrigatórias

```text
data/states/SE/research-protocol.json
data/states/SE/state-pack.json
data/states/SE/synthetic-cohort-pack.json
data/states/SE/evidence-ledger.json
data/states/SE/simulations/territorial-base.json
data/states/SE/manifest.json
reports/sergipe/piloto-atlas-sim.md
```

### Critério de parada

M1 termina quando:

- todos os arquivos públicos previstos existem;
- JSONs validam contra os contratos aplicáveis;
- todo indicador factual tem fonte;
- toda simulação tem disclaimer;
- nenhuma persona bruta é publicada;
- relatório público contém limites e red team;
- varredura de segurança não encontra marcador sensível.

Status atual: os arquivos públicos iniciais já foram criados para validação e integração mínima no app.

## 2. Escopo público inicial

### Unidade piloto

Sergipe, nível estadual.

### Pergunta principal

Sergipe melhorou, piorou, estabilizou ou está inconclusivo nos últimos ciclos disponíveis, considerando indicadores territoriais, econômicos, sociais e de oportunidade?

### Perguntas derivadas

- Quais forças territoriais aparecem com mais evidência?
- Quais fraquezas exigem cautela?
- Que oportunidades públicas, profissionais ou de negócio podem ser testadas?
- O que uma simulação agregada sugere, sem fingir pesquisa real?
- Quais conclusões ainda são frágeis por falta de dado?

## 3. Fontes permitidas

Prioridade de evidência:

1. fontes oficiais primárias;
2. bases públicas com metodologia explícita;
3. análises secundárias rastreáveis;
4. inferências documentadas;
5. simulações explicitamente marcadas como simulação.

Fontes candidatas para M1:

- IBGE: população, PIB territorial, malhas e localidades;
- DATASUS: indicadores públicos de saúde quando aplicável;
- INEP: educação quando aplicável;
- TSE: dados eleitorais públicos quando houver análise cívica;
- fontes estaduais ou municipais oficiais quando houver URL pública e data de acesso;
- metodologia INTEIA pública para inferência, red team e simulação.

## 4. Fila de execução

| ID | Ação | Saída | Gate |
|---|---|---|---|
| M1-00 | Criar estrutura pública | diretórios e READMEs | sem dados privados |
| M1-01 | Escrever protocolo de pesquisa | `research-protocol.json` | schema válido |
| M1-02 | Coletar fontes oficiais | lista de fontes | URLs e data de acesso |
| M1-03 | Montar indicadores | `state-pack.json` | fonte por indicador |
| M1-04 | Criar diagnostics | `state-pack.json` | força, fraqueza, oportunidade, risco |
| M1-05 | Agregar coortes sintéticas | `synthetic-cohort-pack.json` | zero persona individual |
| M1-06 | Construir evidence ledger | `evidence-ledger.json` | claim classificado por tipo |
| M1-07 | Rodar primeira simulação pública | `territorial-base.json` | disclaimer e premissas |
| M1-08 | Gerar relatório público | markdown | red team e limites |
| M1-09 | Criar manifest | `manifest.json` | versão, hashes, data |
| M1-10 | Validar publicação | relatório de validação | schemas e segurança OK |

## 5. Regras de publicação

### Permitido

- indicadores oficiais;
- diagnósticos com fonte;
- inferências com confiança;
- arquétipos agregados;
- pesos agregados de coorte;
- simulações com premissas e disclaimer;
- recomendações com risco e KPI;
- manifests e hashes.

### Bloqueado

- qualquer registro individual;
- prompt interno;
- saída bruta de agente;
- memória operacional;
- arquivo de credencial;
- log de execução privada;
- caminho de máquina;
- cliente, caso privado ou dado não público.

## 6. Gate Helena

Antes de publicar M1:

- separar fato, inferência, previsão, opinião e simulação;
- declarar fonte para cada fato;
- declarar premissa para cada simulação;
- escrever red team para a conclusão principal;
- usar confiança baixa, média ou alta;
- não transformar simulação em afirmação factual.

## 7. Gate Efesto

Antes de publicar M1:

- validar JSON;
- verificar tamanho dos pacotes;
- manter carregamento sob demanda;
- rodar varredura de segurança;
- registrar como reverter a publicação;
- terminar com evidência objetiva de validação.

## 8. Rollback

Se M1 publicar dado incorreto ou sensível:

1. remover o pacote público afetado do fluxo de carregamento;
2. substituir manifest por versão marcada como suspensa;
3. corrigir ou remover o arquivo afetado;
4. registrar motivo no relatório;
5. republicar somente após nova validação.

## 9. Definition of Done M1

M1 está pronto quando o usuário consegue abrir o Atlas, selecionar Sergipe e entender:

- estado geral do território;
- principais forças;
- principais fraquezas;
- oportunidades relevantes;
- simulação territorial base;
- evidências usadas;
- limites da análise.

M1 não precisa ter assistente conversacional, backend, RAG ou pipeline privado automatizado.
