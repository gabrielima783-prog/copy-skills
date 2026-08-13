# Copy Skills

Pacote com três skills em português para agentes compatíveis com o padrão `SKILL.md`:

- `schwartz-copy`: criação, revisão e diagnóstico de copy e ofertas.
- `estrutura-invisivel`: auditoria detalhada de copy, trecho por trecho.
- `funil-brunson`: arquitetura de funis, VSL, webinar, Value Ladder, OTO e upsell.

O repositório inclui todos os frameworks e arquivos de referência usados pelas skills.

## Instalação rápida

### Codex e agentes que usam `~/.agents/skills`

```bash
git clone https://github.com/gabrielima783-prog/copy-skills.git
cd copy-skills
./install.sh
```

O instalador copia as três pastas completas para `~/.agents/skills/`. Arquivos já existentes são preservados em um backup com data e hora.

### Instalação manual

Copie as três pastas de `skills/` para a pasta de skills do seu agente. Para Codex:

```text
~/.agents/skills/
├── schwartz-copy/
├── estrutura-invisivel/
└── funil-brunson/
```

Reinicie o agente depois da instalação para atualizar o catálogo de skills.

## Como usar

Peça normalmente no chat:

```text
Crie uma landing page usando schwartz-copy.
Faça uma estrutura invisível desta copy, trecho por trecho.
Monte um funil low-ticket usando funil-brunson.
```

## Estrutura

```text
skills/
├── schwartz-copy/
│   ├── SKILL.md
│   └── references/
├── estrutura-invisivel/
│   └── SKILL.md
└── funil-brunson/
    ├── SKILL.md
    └── frameworks/
```

## Avisos

As skills são ferramentas de estratégia e escrita. Cases, provas, preços, urgência, escassez e resultados devem ser verdadeiros e validados para cada projeto. Os frameworks são resumos operacionais e não substituem as obras originais.

## Licença

Uso e adaptação permitidos conforme a licença MIT deste repositório.
