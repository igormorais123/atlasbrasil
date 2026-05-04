# Execução M5 leve - simuladores por domínio

**Milestone:** M5 leve  
**Produto:** simuladores públicos por domínio de decisão  
**Status:** primeira versão implementada e pendente de validação final  
**Dependência anterior:** comparação municipal com Aracaju, Itabaiana, Lagarto e Estância  

## 1. Objetivo

Transformar a simulação genérica de negócio em simuladores de triagem por domínio, sempre com disclaimer forte e sem recomendação financeira automática.

Primeiros domínios:

- farmácia;
- padaria;
- clínica;
- curso técnico;
- carreira em saúde;
- carreira técnica.

## 2. Regra central

O Atlas Sim pode dizer:

- "vale investigar";
- "faltam dados";
- "risco alto";
- "oportunidade depende de bairro/setor";
- "não há evidência suficiente".

O Atlas Sim não deve dizer:

- "abra uma farmácia aqui";
- "invista agora";
- "garantia de retorno";
- "cidade X é melhor em absoluto";
- "simulação substitui pesquisa de mercado".

## 3. Contrato de entrada

Cada simulação por domínio deve receber:

- cidade;
- domínio;
- fatos oficiais;
- proxies usados;
- hipóteses;
- dados ausentes;
- riscos;
- fontes;
- disclaimer.

## 4. Contrato de saída

Cada simulação deve devolver:

- score de prontidão;
- score de evidência;
- principais sinais favoráveis;
- principais sinais contrários;
- dados que faltam;
- recomendação de próximo estudo;
- nível de confiança.

## 5. Gatilhos por domínio

### Farmácia

Exige, antes de recomendação forte:

- população por área;
- renda;
- idade;
- acesso a saúde;
- concorrência;
- fluxo;
- legislação;
- aluguel/custo.

### Padaria

Exige:

- densidade residencial;
- fluxo diário;
- renda;
- concorrência;
- hábitos locais;
- custo de ponto;
- logística.

### Clínica

Exige:

- população;
- idade;
- renda/plano de saúde quando público;
- lacuna de especialidades;
- acesso ao SUS;
- concorrência;
- regulação.

### Curso técnico

Exige:

- perfil educacional;
- mercado de trabalho;
- setores locais;
- juventude;
- renda;
- instituições concorrentes;
- empregabilidade.

## 6. Próximo passo

Criados `domain-screening.json` para Aracaju, Itabaiana, Lagarto e Estância, com triagem de farmácia, padaria, clínica, curso técnico e carreiras técnicas conforme disponibilidade de hipótese.

A UI municipal já exibe a triagem por domínio quando o city pack selecionado possui esse arquivo.

Próximo passo: validar no navegador e, depois, criar simuladores mais específicos por domínio com fontes setoriais adicionais.
