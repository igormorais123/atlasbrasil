# Execução M3 leve - city packs de Sergipe

**Milestone:** M3 leve  
**Produto:** primeiros pacotes municipais públicos do Atlas Sim  
**Status:** Aracaju e Itabaiana executadas e validadas  
**Dependência anterior:** M2 mínima validada com Sergipe estadual  

## 1. Por que Aracaju

Aracaju é a capital de Sergipe e o melhor primeiro city pack porque permite testar a promessa original do projeto: ajudar uma pessoa a entender a cidade onde mora, avaliar oportunidades, fragilidades e decisões práticas com base em dados.

## 2. Por que Itabaiana

Itabaiana é o segundo city pack porque testa a lógica de município-polo fora da capital. Isso aprofunda o Atlas: a ferramenta não deve explicar apenas capitais, mas redes regionais e cidades médias onde decisões práticas de negócio, carreira e política pública são mais próximas do usuário.

## 3. Saídas esperadas

```text
data/states/SE/cities/2800308/city-pack.json
data/states/SE/cities/2800308/evidence-ledger.json
data/states/SE/cities/2800308/simulations/business-base.json
data/states/SE/cities/2800308/manifest.json
data/states/SE/cities/2802908/city-pack.json
data/states/SE/cities/2802908/evidence-ledger.json
data/states/SE/cities/2802908/simulations/business-base.json
data/states/SE/cities/2802908/manifest.json
reports/sergipe/aracaju-atlas-sim.md
reports/sergipe/itabaiana-atlas-sim.md
```

## 4. Perguntas do piloto municipal

- Aracaju melhorou, piorou ou permanece inconclusiva nos dados públicos disponíveis?
- Itabaiana funciona como centralidade regional comparável à capital?
- Quais bairros ou zonas exigem dados adicionais antes de recomendar algo?
- Há sinal público suficiente para discutir farmácia, padaria, clínica, escola técnica ou curso profissional?
- Quais oportunidades são hipótese e quais são evidência?

## 5. Fontes candidatas

- IBGE/SIDRA para população e PIB municipal.
- IBGE Localidades para estrutura territorial.
- DATASUS para saúde pública.
- INEP para educação.
- CAGED/RAIS ou fonte oficial equivalente para trabalho, se publicamente acessível.
- Prefeitura ou dados abertos municipais quando houver URL pública e metodologia clara.

## 6. Gates obrigatórios

- Nada de bairro sem fonte pública.
- Nada de recomendação comercial sem indicador mínimo de demanda, renda, fluxo ou lacuna de serviço.
- Nada de agente individual.
- Nada de inferência sem confiança e limitação.
- Simulação de negócio sempre marcada como simulação, não conselho financeiro.

## 7. Status

Schema municipal criado e pacote Aracaju inicial gerado.

City pack integrado e validado no painel Atlas Sim quando o usuário selecionar Aracaju no mapa ou na busca.

City pack Itabaiana criado, integrado e validado no navegador.

## 8. Próximo passo

Preparar comparação municipal Aracaju versus Itabaiana e, em seguida, expandir para Lagarto ou Estância.
