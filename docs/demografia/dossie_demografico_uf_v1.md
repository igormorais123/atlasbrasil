# AtlasBrasil — Dossiê demográfico por UF V1

Consulta e geração: 2026-05-15.

Este arquivo é uma contribuição inicial para o projeto AtlasBrasil. Ele organiza uma trilha de dados oficiais e abertos para que cada brasileiro consiga comparar cidade, estado e país com dados, e para que a INTEIA construa agentes sintéticos territorialmente ricos.

## Auditoria curta

- Escopo coberto: 27 Unidades da Federação.
- Números já materializados nesta V1: população residente do Censo 2022 por UF e quantidade de municípios via APIs do IBGE.
- Riqueza planejada: 119 campos demográficos/sociais/saúde/educação/segurança por UF.
- Limitação: a meta de 100 itens por UF foi estruturada e auditada, mas nem todos os valores foram coletados nesta primeira execução para evitar fabricação de dados.
- Regra de uso: campo sem valor nesta V1 deve ser preenchido por ETL da fonte indicada, não por inferência.

## Fontes principais consultadas

| Fonte | URL | Uso |
|---|---|---|
| IBGE Censo Demográfico 2022 | https://www.ibge.gov.br/estatisticas/sociais/saude/22827-censo-demografico-2022.html | população, idade, sexo, cor/raça, domicílios, alfabetização, indígenas, quilombolas, deficiência, migração; melhor base estrutural recente |
| IBGE SIDRA tabela 9514 | https://apisidra.ibge.gov.br/values/t/9514/n3/all/v/93/p/2022?formato=json | população residente por UF no Censo 2022 |
| IBGE API Localidades | https://servicodados.ibge.gov.br/api/v1/localidades/estados?orderBy=nome | códigos, nomes, regiões e municípios por UF |
| PNAD Contínua Anual | https://www.ibge.gov.br/estatisticas/sociais/saude/17270-pnad-continua.html | moradores, domicílios, trabalho, renda, educação, internet, segurança alimentar em UFs, regiões metropolitanas e capitais |
| DataSUS TabNet/SINASC | http://tabnet.datasus.gov.br/cgi/tabcgi.exe?sinasc/cnv/nvbr.def | nascidos vivos, idade/instrução/cor da mãe, pré-natal, peso ao nascer, UF e município; dados finais até 2024 observados na consulta |
| DataSUS indicadores de saúde | https://datasus.saude.gov.br/indicadores-de-saude/ | indicadores administrativos de saúde |
| INEP IDEB | https://www.gov.br/inep/pt-br/areas-de-atuacao/pesquisas-estatisticas-e-indicadores/ideb | IDEB 2023 por UF/rede/etapa e série histórica bienal |
| INEP indicadores educacionais | https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/indicadores-educacionais/taxas-de-distorcao-idade-serie | distorção idade-série, rendimento, docentes, esforço e regularidade |
| Ipea Atlas da Violência | https://www.ipea.gov.br/atlasviolencia/ | homicídios, homicídios de mulheres, negros, jovens e taxas por UF/município; metadados SIM/Sinan |
| Atlas da Violência 2025 | https://www.ipea.gov.br/portal/categorias/45-todas-as-noticias/noticias/15781-atlas-da-violencia-brasil-registrou-45-747-homicidios-em-2023-menor-taxa-em-11-anos-mas-violencia-contra-criancas-ainda-preocupa | Brasil 2023: 45.747 homicídios, taxa 21,2/100 mil; alerta de MVCI e homicídios ocultos |
| FBSP Anuário Brasileiro de Segurança Pública | https://forumseguranca.org.br/anuario-brasileiro-seguranca-publica/ | registros de segurança pública por UF, crimes patrimoniais, violência contra mulher, MVI; harmonização exige cuidado |
| PNUD/Ipea/FJP Atlas Brasil | https://dados.gov.br/dados/conjuntos-dados/atlasbrasil | IDHM e mais de 200 indicadores censitários; importante mas base principal censitária 1991/2000/2010 e registros administrativos 2012-2017 |
| FGV Social Mapa da Riqueza | https://cps.fgv.br/riqueza | renda e riqueza por UF/capital/município base IRPF, útil como proxy de elite e desigualdade |

## Campos candidatos padronizados por UF

1. população total
2. sexo masculino
3. sexo feminino
4. razão de sexo
5. idade 0-4
6. idade 5-9
7. idade 10-14
8. idade 15-19
9. idade 20-24
10. idade 25-29
11. idade 30-34
12. idade 35-39
13. idade 40-44
14. idade 45-49
15. idade 50-54
16. idade 55-59
17. idade 60-64
18. idade 65-69
19. idade 70-74
20. idade 75+
21. mediana etária
22. índice de envelhecimento
23. dependência jovem
24. dependência idosa
25. cor/raça branca
26. cor/raça preta
27. cor/raça parda
28. cor/raça indígena
29. cor/raça amarela
30. população indígena
31. população quilombola
32. urbano
33. rural
34. densidade demográfica
35. municípios
36. regiões imediatas
37. regiões intermediárias
38. domicílios permanentes
39. moradores por domicílio
40. domicílios próprios
41. domicílios alugados
42. água por rede
43. esgoto adequado
44. coleta de lixo
45. energia elétrica
46. internet no domicílio
47. telefone celular
48. renda domiciliar per capita
49. massa de rendimento
50. Gini
51. pobreza
52. extrema pobreza
53. Bolsa Família/CadÚnico
54. ocupação
55. desocupação
56. informalidade
57. força de trabalho
58. rendimento trabalho
59. setores de atividade
60. escolaridade 25+
61. alfabetização
62. analfabetismo
63. frequência escolar 4-5
64. frequência 6-14
65. frequência 15-17
66. ensino médio completo
67. superior completo
68. IDEB anos iniciais
69. IDEB anos finais
70. IDEB ensino médio
71. taxa aprovação
72. taxa abandono
73. distorção idade-série
74. matrículas públicas
75. matrículas privadas
76. tempo integral
77. docentes formação adequada
78. nascidos vivos
79. fecundidade
80. idade da mãe
81. pré-natal adequado
82. baixo peso ao nascer
83. mortalidade infantil
84. mortalidade materna
85. óbitos gerais
86. esperança de vida
87. leitos SUS
88. cobertura APS
89. vacinação
90. internações sensíveis APS
91. homicídios
92. taxa homicídios
93. homicídios jovens
94. homicídios mulheres
95. homicídios negros
96. MVCI
97. MVI
98. feminicídio
99. estupro
100. roubo/furto veículos
101. estelionato
102. migração intraestadual
103. migração interestadual
104. naturalidade UF
105. tempo de moradia
106. religião declarada
107. deficiência visual
108. deficiência auditiva
109. deficiência motora
110. deficiência intelectual
111. IDHM
112. IDHM renda
113. IDHM educação
114. IDHM longevidade
115. IVS
116. vulnerabilidade crianças
117. saneamento precário
118. chefia feminina
119. desigualdade intrarregional

## Dossiê por UF

### Acre (AC)

- Região: Norte.
- Código IBGE da UF: 12.
- População residente — Censo 2022/SIDRA tabela 9514: 830.018 pessoas.
- Municípios — IBGE Localidades API: 22.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Alagoas (AL)

- Região: Nordeste.
- Código IBGE da UF: 27.
- População residente — Censo 2022/SIDRA tabela 9514: 3.127.683 pessoas.
- Municípios — IBGE Localidades API: 102.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Amapá (AP)

- Região: Norte.
- Código IBGE da UF: 16.
- População residente — Censo 2022/SIDRA tabela 9514: 733.759 pessoas.
- Municípios — IBGE Localidades API: 16.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Amazonas (AM)

- Região: Norte.
- Código IBGE da UF: 13.
- População residente — Censo 2022/SIDRA tabela 9514: 3.941.613 pessoas.
- Municípios — IBGE Localidades API: 62.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Bahia (BA)

- Região: Nordeste.
- Código IBGE da UF: 29.
- População residente — Censo 2022/SIDRA tabela 9514: 14.141.626 pessoas.
- Municípios — IBGE Localidades API: 417.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Ceará (CE)

- Região: Nordeste.
- Código IBGE da UF: 23.
- População residente — Censo 2022/SIDRA tabela 9514: 8.794.957 pessoas.
- Municípios — IBGE Localidades API: 184.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Distrito Federal (DF)

- Região: Centro-Oeste.
- Código IBGE da UF: 53.
- População residente — Censo 2022/SIDRA tabela 9514: 2.817.381 pessoas.
- Municípios — IBGE Localidades API: 1.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Espírito Santo (ES)

- Região: Sudeste.
- Código IBGE da UF: 32.
- População residente — Censo 2022/SIDRA tabela 9514: 3.833.712 pessoas.
- Municípios — IBGE Localidades API: 78.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Goiás (GO)

- Região: Centro-Oeste.
- Código IBGE da UF: 52.
- População residente — Censo 2022/SIDRA tabela 9514: 7.056.495 pessoas.
- Municípios — IBGE Localidades API: 246.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Maranhão (MA)

- Região: Nordeste.
- Código IBGE da UF: 21.
- População residente — Censo 2022/SIDRA tabela 9514: 6.776.699 pessoas.
- Municípios — IBGE Localidades API: 217.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Mato Grosso (MT)

- Região: Centro-Oeste.
- Código IBGE da UF: 51.
- População residente — Censo 2022/SIDRA tabela 9514: 3.658.649 pessoas.
- Municípios — IBGE Localidades API: 142.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Mato Grosso do Sul (MS)

- Região: Centro-Oeste.
- Código IBGE da UF: 50.
- População residente — Censo 2022/SIDRA tabela 9514: 2.757.013 pessoas.
- Municípios — IBGE Localidades API: 79.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Minas Gerais (MG)

- Região: Sudeste.
- Código IBGE da UF: 31.
- População residente — Censo 2022/SIDRA tabela 9514: 20.539.989 pessoas.
- Municípios — IBGE Localidades API: 853.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Pará (PA)

- Região: Norte.
- Código IBGE da UF: 15.
- População residente — Censo 2022/SIDRA tabela 9514: 8.120.131 pessoas.
- Municípios — IBGE Localidades API: 144.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Paraíba (PB)

- Região: Nordeste.
- Código IBGE da UF: 25.
- População residente — Censo 2022/SIDRA tabela 9514: 3.974.687 pessoas.
- Municípios — IBGE Localidades API: 223.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Paraná (PR)

- Região: Sul.
- Código IBGE da UF: 41.
- População residente — Censo 2022/SIDRA tabela 9514: 11.444.380 pessoas.
- Municípios — IBGE Localidades API: 399.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Pernambuco (PE)

- Região: Nordeste.
- Código IBGE da UF: 26.
- População residente — Censo 2022/SIDRA tabela 9514: 9.058.931 pessoas.
- Municípios — IBGE Localidades API: 185.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Piauí (PI)

- Região: Nordeste.
- Código IBGE da UF: 22.
- População residente — Censo 2022/SIDRA tabela 9514: 3.271.199 pessoas.
- Municípios — IBGE Localidades API: 224.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Rio de Janeiro (RJ)

- Região: Sudeste.
- Código IBGE da UF: 33.
- População residente — Censo 2022/SIDRA tabela 9514: 16.055.174 pessoas.
- Municípios — IBGE Localidades API: 92.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Rio Grande do Norte (RN)

- Região: Nordeste.
- Código IBGE da UF: 24.
- População residente — Censo 2022/SIDRA tabela 9514: 3.302.729 pessoas.
- Municípios — IBGE Localidades API: 167.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Rio Grande do Sul (RS)

- Região: Sul.
- Código IBGE da UF: 43.
- População residente — Censo 2022/SIDRA tabela 9514: 10.882.965 pessoas.
- Municípios — IBGE Localidades API: 497.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Rondônia (RO)

- Região: Norte.
- Código IBGE da UF: 11.
- População residente — Censo 2022/SIDRA tabela 9514: 1.581.196 pessoas.
- Municípios — IBGE Localidades API: 52.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Roraima (RR)

- Região: Norte.
- Código IBGE da UF: 14.
- População residente — Censo 2022/SIDRA tabela 9514: 636.707 pessoas.
- Municípios — IBGE Localidades API: 15.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Santa Catarina (SC)

- Região: Sul.
- Código IBGE da UF: 42.
- População residente — Censo 2022/SIDRA tabela 9514: 7.610.361 pessoas.
- Municípios — IBGE Localidades API: 295.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### São Paulo (SP)

- Região: Sudeste.
- Código IBGE da UF: 35.
- População residente — Censo 2022/SIDRA tabela 9514: 44.411.238 pessoas.
- Municípios — IBGE Localidades API: 645.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Sergipe (SE)

- Região: Nordeste.
- Código IBGE da UF: 28.
- População residente — Censo 2022/SIDRA tabela 9514: 2.210.004 pessoas.
- Municípios — IBGE Localidades API: 75.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

### Tocantins (TO)

- Região: Norte.
- Código IBGE da UF: 17.
- População residente — Censo 2022/SIDRA tabela 9514: 1.511.460 pessoas.
- Municípios — IBGE Localidades API: 139.
- Fontes prioritárias para completar o perfil: IBGE Censo 2022; PNAD Contínua anual; DataSUS SIM/SINASC; INEP; Ipea Atlas da Violência; FBSP; PNUD/Ipea/FJP Atlas Brasil; FGV Social.

#### Estrutura de enriquecimento recomendada

- Demografia estrutural: população total; sexo masculino; sexo feminino; razão de sexo; idade 0-4; idade 5-9; idade 10-14; idade 15-19; idade 20-24; idade 25-29; idade 30-34; idade 35-39; idade 40-44; idade 45-49; idade 50-54; idade 55-59; idade 60-64; idade 65-69; idade 70-74; idade 75+; mediana etária; índice de envelhecimento; dependência jovem; dependência idosa; cor/raça branca; cor/raça preta; cor/raça parda; cor/raça indígena; cor/raça amarela; população indígena; população quilombola; urbano; rural; densidade demográfica; municípios.
- Domicílios, renda e trabalho: regiões imediatas; regiões intermediárias; domicílios permanentes; moradores por domicílio; domicílios próprios; domicílios alugados; água por rede; esgoto adequado; coleta de lixo; energia elétrica; internet no domicílio; telefone celular; renda domiciliar per capita; massa de rendimento; Gini; pobreza; extrema pobreza; Bolsa Família/CadÚnico; ocupação; desocupação; informalidade; força de trabalho; rendimento trabalho; setores de atividade; escolaridade 25+.
- Educação: alfabetização; analfabetismo; frequência escolar 4-5; frequência 6-14; frequência 15-17; ensino médio completo; superior completo; IDEB anos iniciais; IDEB anos finais; IDEB ensino médio; taxa aprovação; taxa abandono; distorção idade-série; matrículas públicas; matrículas privadas.
- Saúde: tempo integral; docentes formação adequada; nascidos vivos; fecundidade; idade da mãe; pré-natal adequado; baixo peso ao nascer; mortalidade infantil; mortalidade materna; óbitos gerais; esperança de vida; leitos SUS; cobertura APS.
- Segurança: vacinação; internações sensíveis APS; homicídios; taxa homicídios; homicídios jovens; homicídios mulheres; homicídios negros; MVCI; MVI; feminicídio.
- Mobilidade, identidade e vulnerabilidade: estupro; roubo/furto veículos; estelionato; migração intraestadual; migração interestadual; naturalidade UF; tempo de moradia; religião declarada; deficiência visual; deficiência auditiva; deficiência motora; deficiência intelectual; IDHM; IDHM renda; IDHM educação; IDHM longevidade; IVS; vulnerabilidade crianças; saneamento precário; chefia feminina; desigualdade intrarregional.

## Notas metodológicas e plano incremental

1. Censo 2022 é a âncora estrutural para distribuição da população em sexo, idade, raça/cor, domicílios, povos indígenas/quilombolas, deficiência e migração.
2. PNAD Contínua deve preencher variáveis anuais recentes de renda, trabalho, educação, internet e segurança alimentar por UF, respeitando erro amostral.
3. Saúde deve separar eventos por residência e por ocorrência; SINASC e SIM têm defasagens e revisões.
4. Segurança pública mistura registros policiais e mortalidade; FBSP é útil para harmonização, Ipea/SIM é melhor para séries de homicídios, e MVCI precisa constar como alerta de qualidade.
5. IDHM/Atlas Brasil é poderoso para vulnerabilidade e desenvolvimento humano, mas parte relevante ainda é censitária antiga; usar como contexto, não como fotografia 2024.
6. Próxima etapa: criar scripts ETL por fonte, gerar CSV longo `uf,ano,indicador,valor,fonte`, validar hashes/downloads e ligar ao mapa sem alterar o site atual.
