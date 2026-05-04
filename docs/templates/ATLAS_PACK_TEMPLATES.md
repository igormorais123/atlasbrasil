# Templates de pacote público Atlas

Estes templates orientam a montagem do pacote M1. Eles não são dados reais e não devem ser publicados como pacote final.

Substitua todo campo `PREENCHER` por dado público, fonte, premissa ou limitação real.

## `research-protocol.json`

```json
{
  "version": "0.1.0",
  "researchQuestion": "PREENCHER",
  "scope": {
    "level": "state",
    "uf": "SE",
    "domain": "territorial",
    "period": {
      "startYear": 2010,
      "endYear": 2026
    }
  },
  "corpus": [
    {
      "id": "fonte-001",
      "label": "PREENCHER",
      "url": "PREENCHER",
      "evidenceLevel": "primary_official",
      "accessedAt": "2026-05-04T00:00:00Z"
    }
  ],
  "criteria": {
    "inclusion": ["PREENCHER"],
    "exclusion": ["PREENCHER"]
  },
  "claims": [],
  "redTeam": [],
  "recommendations": [],
  "limitations": ["PREENCHER"]
}
```

## `state-pack.json`

```json
{
  "version": "0.1.0",
  "uf": "SE",
  "name": "Sergipe",
  "generatedAt": "2026-05-04T00:00:00Z",
  "verdict": "inconclusivo",
  "confidence": "baixa",
  "indicators": [],
  "diagnostics": {
    "strengths": [],
    "weaknesses": [],
    "opportunities": [],
    "risks": [],
    "limitations": ["PREENCHER"]
  },
  "sources": []
}
```

## `synthetic-cohort-pack.json`

```json
{
  "version": "0.1.0",
  "scope": {
    "uf": "SE",
    "level": "state",
    "name": "Sergipe"
  },
  "sourceSummary": {
    "privateSource": "gerador privado sanitizado",
    "rawPersonaCount": 0,
    "publishedPersonaCount": 0,
    "aggregationMethod": "PREENCHER"
  },
  "privacy": {
    "rawPersonasPublished": false,
    "redactionLevel": "aggregate_only",
    "policy": "Somente arquétipos agregados podem ser publicados."
  },
  "archetypes": [
    {
      "id": "arquetipo-001",
      "label": "PREENCHER",
      "weight": 1,
      "attributes": {
        "descricao": "PREENCHER"
      },
      "decisionDrivers": ["PREENCHER"],
      "confidence": "baixa",
      "limitations": ["PREENCHER"]
    }
  ],
  "limitations": ["PREENCHER"]
}
```

## `simulation-pack.json`

```json
{
  "version": "0.1.0",
  "scope": {
    "uf": "SE",
    "level": "state",
    "name": "Sergipe"
  },
  "simulation": {
    "id": "se-territorial-base-001",
    "type": "territorial",
    "scenario": "base",
    "seed": "PREENCHER",
    "generatedAt": "2026-05-04T00:00:00Z"
  },
  "inputs": {
    "facts": [],
    "assumptions": [],
    "events": []
  },
  "outputs": {
    "summary": "PREENCHER",
    "metrics": [],
    "recommendations": []
  },
  "verifiers": [],
  "disclaimer": "Esta é uma simulação sintética agregada, não uma pesquisa de campo.",
  "limitations": ["PREENCHER"],
  "sources": []
}
```

## `manifest.json`

```json
{
  "version": "0.1.0",
  "uf": "SE",
  "generatedAt": "2026-05-04T00:00:00Z",
  "status": "draft",
  "files": [
    {
      "path": "state-pack.json",
      "kind": "state_pack",
      "hash": "PREENCHER"
    }
  ],
  "publicationGate": {
    "schemasValid": false,
    "securityScanPassed": false,
    "reviewed": false
  }
}
```
