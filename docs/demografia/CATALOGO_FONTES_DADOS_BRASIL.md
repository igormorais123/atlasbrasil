# Catálogo expandido de fontes de dados Brasil — AtlasBrasil

Consulta: 2026-05-15. Missão complementar autônoma com busca web, verificação direta de URLs e sementes obrigatórias levantadas anteriormente. Objetivo: orientar o V1 do AtlasBrasil e agentes sintéticos INTEIA para indicadores por município, UF e Brasil, separando fonte primária, secundária, acadêmica e agregadores.

## Critérios de uso

1. Priorizar fonte primária oficial com API ou arquivo baixável.
2. Usar agregadores apenas para acelerar protótipo, auditoria cruzada ou quando organizarem dados oficiais com transparência.
3. Não misturar dimensões: TSE/Câmara/Senado são político-institucionais/eleitorais, não demografia pura.
4. Registrar granularidade real antes de plugar no app: país, UF, município, setor censitário, escola, estabelecimento, zona/seção eleitoral.
5. Para V1 visual, preferir séries de 5 anos e indicadores compreensíveis ao cidadão.

## Fontes primárias oficiais

| Eixo | Fonte | URL/endpoints | Granularidade | Cobertura/atualização | Uso recomendado | Limitações |
|---|---|---|---|---|---|---|
| Demografia geral | IBGE APIs oficiais | https://servicodados.ibge.gov.br/api/docs/ | país, região, UF, município, distrito; algumas bases por setor | contínua conforme pesquisa | localidades, malhas, agregados, metadados, publicações e notícias | requer mapear tabela/agregado por indicador |
| Demografia geral | IBGE SIDRA/API | https://api.sidra.ibge.gov.br/ e docs em https://apisidra.ibge.gov.br/home/ajuda | varia por tabela: país, UF, município, distrito/setor em Censo | séries longas; Censo 2022 estrutural; PNAD/PIB anuais/trimestrais | fonte principal para população, PIB, renda, domicílios, saneamento, trabalho, educação censitária | algumas consultas exigem descobrir códigos de tabelas/classificações |
| Demografia geral | Censo 2022 Panorama/recursos | https://censo2022.ibge.gov.br/panorama/recursos.html | Brasil, UF, município, setores em produtos específicos | Censo 2022; pesquisa 10101; CNEFE | estrutura populacional, sexo, idade, cor/raça, domicílios, entorno, CNEFE | APIs e arquivos variam por produto |
| Demografia geral | Censo 2022 IBGE | https://censo2022.ibge.gov.br/ | Brasil, UF, município e recortes especiais | publicações recentes: mulheres, indígenas, favelas/comunidades, entorno, autismo, etnias/línguas indígenas | módulos temáticos para aprofundar perfis locais | nem toda publicação tem API simples |
| Território | Registro de Referência de Municípios / Localidades IBGE | https://www.gov.br/conecta/catalogo/apis/registro-referencia-municipios | município, microrregião, mesorregião, UF, região imediata/intermediária, região | base de referência | normalização de códigos IBGE e hierarquias territoriais | não é indicador social em si |
| Saúde | DataSUS/TABNET | https://datasus.saude.gov.br/informacoes-de-saude-tabnet/ | UF, município, estabelecimento em alguns sistemas | séries históricas; atualização por sistema | mortalidade, nascidos vivos, internações, produção ambulatorial/hospitalar, imunização | TABNET é menos amigável que API; requer ETL cuidadoso |
| Saúde | Portal de Dados Abertos do SUS | https://dadosabertos.saude.gov.br/ | UF, município, estabelecimento, UBS/CNES | atualização por dataset | datasets baixáveis e API DEMAS | metadados heterogêneos |
| Saúde | API DEMAS / Dados Abertos Saúde | https://apidadosabertos.saude.gov.br/ | estabelecimentos CNES, UBS, regiões de saúde | ativo; endpoint verificado em 2026-05-15 | plugar CNES, UBS, tipos de unidade e regiões de saúde | cobertura varia por endpoint |
| Saúde | CNES — Cadastro Nacional de Estabelecimentos de Saúde | https://dados.gov.br/dados/conjuntos-dados/cnes-cadastro-nacional-de-estabelecimentos-de-saude | estabelecimento, município, UF | metadado indicou alteração de arquivo em 2025 | infraestrutura de saúde e presença de equipamentos/serviços | não mede qualidade de atendimento diretamente |
| Educação | INEP indicadores educacionais | https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/indicadores-educacionais | Brasil, UF, município, escola conforme indicador | séries anuais | IDEB, esforço docente, complexidade de gestão, horas-aula, alunos por turma, indicadores financeiros | downloads separados; exige dicionário |
| Educação | INEP Censo Escolar / microdados / sinopses | https://www.gov.br/inep/pt-br/areas-de-atuacao/pesquisas-estatisticas-e-indicadores/censo-escolar | escola, município, UF, Brasil | anual; Censo Escolar 2024 disponível | matrículas, infraestrutura, docentes, etapas/modalidades | microdados podem ser grandes; observar anonimização |
| Educação | MEC Dados Abertos | https://dadosabertos.mec.gov.br/ | varia por dataset | atualização por dataset | complemento para educação básica/superior e programas | preferir INEP para estatística oficial da educação básica |
| Segurança | Sinesp/MJSP — Ocorrências Criminais | https://dados.mj.gov.br/dataset/sistema-nacional-de-estatisticas-de-seguranca-publica | município e UF | desde SinespJC; dados mensais/agregados | homicídio doloso, roubo/furto de veículos, estupro, roubo de carga, latrocínio etc. | portal instável na validação; dados dependem de qualidade enviada pelas UFs |
| Segurança | Dados Nacionais de Segurança Pública MJSP | https://www.gov.br/mj/pt-br/assuntos/sua-seguranca/seguranca-publica/estatistica | UF e municípios, conforme publicação | atualizado por MJSP | camada oficial nacional de segurança | alguns downloads ficam em portal CKAN instável |
| Política/institucional | TSE Dados Abertos CKAN | https://dadosabertos.tse.jus.br/ | município, zona, seção, local de votação, eleitor | ciclos eleitorais; 2024 disponível | eleitorado, perfil do eleitorado, locais, candidaturas, resultados, contas | dimensão eleitoral, não demográfica |
| Política/institucional | TSE Eleitorado 2024 | https://dadosabertos.tse.jus.br/dataset/eleitorado-2024 | UF, município, zona/seção/local; perfil | 2024 | perfil eleitoral e acessibilidade/deficiência eleitoral | não substitui Censo/IBGE |
| Política/institucional | Câmara Dados Abertos API | https://dadosabertos.camara.leg.br/swagger/api.html | deputado, partido, votação, proposição; UF parlamentar | atual | contexto político, emendas e representação | não é indicador municipal de qualidade de vida |
| Política/institucional | Senado Dados Abertos | https://legis.senado.leg.br/dadosabertos/docs/ | senador, matérias, votações | atual | complementar Câmara na dimensão institucional | foco federal |
| Economia/social | PIB municipal/UF IBGE SIDRA | https://sidra.ibge.gov.br/pesquisa/pib-munic/tabelas | município, UF, Brasil | anual; página IBGE indica série 2002–2023/2022–2023 | PIB, PIB per capita, valor adicionado por setor | defasagem natural de contas regionais |
| Economia/social | CadÚnico dados agregados | https://dados.gov.br/dataset/cadastro-unico-familias-pessoas-cadastradas-por-faixas-de-renda | município, ano/mês, faixa de renda | mensal/recorrente conforme publicação | vulnerabilidade social e baixa renda agregada | API CPF do Gov.br Conecta não serve para app público; usar apenas agregados abertos |
| Economia/social | RAIS/CAGED / Ministério do Trabalho | https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/estatisticas-trabalho | município, CNAE, ocupação, setor | mensal/anual conforme base | emprego formal e mercado de trabalho | microdados grandes; exige ETL |
| Economia/social | IpeaData | http://www.ipeadata.gov.br/ | país, UF e alguns municípios/séries | séries históricas | indicadores macro, sociais e regionais | API/extração menos uniforme |

## Fontes secundárias confiáveis

| Eixo | Fonte | URL | Granularidade | Uso recomendado | Observações |
|---|---|---|---|---|---|
| Segurança | Fórum Brasileiro de Segurança Pública — Anuário | https://forumseguranca.org.br/publicacoes/anuario-brasileiro-de-seguranca-publica/ | principalmente UF; alguns recortes nacionais/temáticos | avaliação de segurança por UF, metodologia consolidada, comparação anual | fonte secundária forte; sempre registrar que compila fontes oficiais |
| Segurança | Base dos Dados — Anuário Brasileiro de Segurança Pública | https://basedosdados.org/dataset/9a2368e4-2fa6-4b42-88b7-026aa048f5ab | UF/ano conforme tabela | acelerar protótipo com dados organizados | verificar licença e tabelas antes de uso em produção |
| Segurança/saúde | Ipea Atlas da Violência | https://www.ipea.gov.br/atlasviolencia/ | país, região, UF, município, capital | homicídios e violência letal; CSV/ODS por série | usa SIM/DataSUS; fonte secundária/acadêmica-governamental forte |
| Educação | QEdu | https://qedu.org.br/brasil/ideb/estados | escola, município, UF, Brasil | referência visual e comparação IDEB | derivado; preferir INEP para ingestão oficial |
| Demografia/social | Base dos Dados — População Brasileira | https://basedosdados.org/dataset/d30222ad-7a5c-4778-a1ec-f0785371d1ca | município, UF, Brasil | população 1991–2025 organizada | validar origem IBGE e licença |
| Demografia/social | Base dos Dados — Censo 2022 | https://basedosdados.org/dataset/08a1546e-251f-4546-9fe0-b1e6ab2b203d | município/UF e tabelas SIDRA | acelerar consumo de tabelas SIDRA | fonte derivada; manter rastreabilidade para IBGE |
| Primeira infância | Primeira Infância em Dados | https://primeirainfanciaemdados.org.br/dados/brasil/ | Brasil, UF, município | mais de 30 indicadores para infância | bom para painéis temáticos; checar download/licença |
| Social/desenvolvimento | Atlas do Desenvolvimento Humano no Brasil | https://dados.gov.br/dados/conjuntos-dados/atlasbrasil e http://www.atlasbrasil.org.br/acervo/atlas | município, UF, RM, UDH | IDHM e 200+ indicadores 1991/2000/2010; registros 2012–2017; IDHM 2020/2021 em páginas | excelente referência, mas parte histórica; não substitui Censo 2022 |

## Fontes acadêmicas ou técnico-científicas

| Eixo | Fonte | URL | Granularidade | Uso recomendado | Limitações |
|---|---|---|---|---|---|
| Segurança | Ipea Atlas da Violência — publicações | https://www.ipea.gov.br/atlasviolencia/publicacoes | país, UF, município em estudos | metodologia e interpretação de homicídios, MVCI, SIM/Sinan | para app V1 usar séries simples; deixar metodologia avançada para notas |
| Demografia/social | Comitê de Estatísticas Sociais/IBGE — metadados CadÚnico, INEP etc. | https://ces.ibge.gov.br/base-de-dados/metadados/ | metadados nacionais | entender processo, população-alvo, periodicidade e nível de divulgação | metadado, não base pronta |
| Automação | PySUS | https://pysus.readthedocs.io/pt/latest/tutorials/IBGE_data.html | depende da fonte | automação de IBGE/DataSUS em Python | biblioteca auxiliar; fonte primária continua órgão público |

## Agregadores privados/terceiros e pistas úteis

| Fonte | URL | Tipo | Uso possível | Cautela |
|---|---|---|---|---|
| Datapedia | https://datapedia.info/ | agregador privado | referência rápida de município/UF com TSE + IBGE; atualizado 2024 | verificar licença/reutilização antes de incorporar dados |
| Brazil Visible | https://brazilvisible.org/docs/apis/ | documentação/curadoria | mapa de APIs governamentais por área | validar cada fonte primária antes de uso |
| API inepdadosabertos não oficial | https://github.com/inepdadosabertos/api | projeto comunitário | inspiração de API para IDEB/escolas | projeto antigo/não oficial; não usar como fonte primária |
| Portais estaduais de segurança | exemplo RJ: https://www.ispdados.rj.gov.br/; CE: https://www.sspds.ce.gov.br/indicadores-de-seguranca-publica/ | fontes estaduais oficiais | complementar Sinesp com séries estaduais detalhadas | formatos e metodologias variam por UF; alto custo para cobertura nacional |
| TREs estaduais | exemplo BA: https://www.tre-ba.jus.br/transparencia-e-prestacao-de-contas/dados-abertos | órgãos regionais | pista para locais de votação/eleitorado | preferir TSE central quando cobrir Brasil |

## Validação amostral executada em 2026-05-15

- `https://servicodados.ibge.gov.br/api/v1/localidades/estados`: HTTP 200, JSON retornado.
- `https://apidadosabertos.saude.gov.br/cnes/tipounidades`: HTTP 200, JSON retornado.
- `https://dadosabertos.tse.jus.br/dataset/eleitorado-2024`: HTTP 200.
- `https://dadosabertos.camara.leg.br/swagger/api.html`: HTTP 200.
- `https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/indicadores-educacionais`: HTTP 200.
- `https://www.ipea.gov.br/atlasviolencia/dados-series/328`: HTTP 200, página com CSV/ODS e metadados de homicídios 1989–2023.
- `https://dados.mj.gov.br/dataset/sistema-nacional-de-estatisticas-de-seguranca-publica`: busca confirmou dataset e recursos XLSX, mas a validação direta por terminal sofreu timeout. Registrar como fonte prioritária com risco operacional de disponibilidade.
- `https://api.sidra.ibge.gov.br/values/...`: tentativa amostral com parâmetros incorretos retornou 404; não invalida a API, apenas indica que cada tabela exige parâmetros SIDRA corretos.

## Próximos passos práticos para V1 visual

### 1. Demografia
- Plugar primeiro IBGE Localidades para árvore territorial e códigos.
- Plugar SIDRA/Censo 2022 para população total, sexo, idade, raça/cor, domicílios e saneamento.
- Usar Base dos Dados apenas como cache/atalho auditável para população 1991–2025.

### 2. Saúde
- Começar por DataSUS/SIM para mortalidade geral e causas selecionadas; SINASC para nascidos vivos; CNES/API DEMAS para estabelecimentos e UBS por município.
- Indicador simples V1: estabelecimentos/UBS por 10 mil habitantes, mortalidade infantil quando disponível, cobertura/produção básica se a fonte estiver limpa.

### 3. Educação
- Começar por INEP IDEB e Censo Escolar/sinopses.
- Indicador simples V1: IDEB anos iniciais/finais, alunos por turma, distorção idade-série, infraestrutura escolar básica.
- QEdu só como conferência visual, não ingestão primária.

### 4. Segurança
- Começar por Sinesp/MJSP município/UF para ocorrências criminais e por Ipea Atlas da Violência para homicídios com série longa.
- Para UF, FBSP/Anuário entra como fonte secundária forte e comparável.
- Indicador simples V1: homicídios por 100 mil, furtos/roubos de veículos por 100 mil quando disponível, tendência dos últimos 5 anos.

### 5. Economia/social
- Plugar PIB municipal/UF no SIDRA, CadÚnico agregado por município e RAIS/CAGED depois.
- Indicador simples V1: PIB per capita, famílias/pessoas CadÚnico por faixa de renda, emprego formal.

## Lacunas relevantes

- Segurança municipal nacional depende de estabilidade do portal MJSP/Sinesp e padronização das UFs.
- Muitos produtos do Censo 2022 têm granularidade rica, mas APIs/arquivos precisam de mapeamento por tabela antes de ingestão automática.
- CadÚnico público deve ser usado apenas em agregado aberto; APIs de CPF/serviço não são adequadas para app público de indicadores.
- Câmara/Senado/TSE devem ficar em camada institucional/eleitoral, separada dos indicadores de qualidade de vida.
