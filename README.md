# Copy Skills

Pacote com quatro skills em português para agentes compatíveis com o padrão `SKILL.md`:

- `schwartz-copy`: criação, revisão e diagnóstico de copy e ofertas.
- `estrutura-invisivel`: auditoria detalhada de copy, trecho por trecho.
- `funil-brunson`: arquitetura de funis, VSL, webinar, Value Ladder, OTO e upsell.
- `engenharia-de-criativos`: transcrição, análise visual, desconstrução de copy e adaptação de criativos em áudio ou vídeo.

O repositório inclui todos os frameworks e arquivos de referência usados pelas skills.

## Instalação rápida

### Codex e agentes que usam `~/.agents/skills`

```bash
git clone https://github.com/gabrielima783-prog/copy-skills.git
cd copy-skills
./install.sh
```

O instalador copia as quatro pastas completas para `~/.agents/skills/`. Arquivos já existentes são preservados em um backup com data e hora.

Para transcrever mídia, a `engenharia-de-criativos` requer Python 3 e ffmpeg. Depois da instalação das skills, prepare o Whisper:

```bash
~/.agents/skills/engenharia-de-criativos/scripts/setup.sh
```

### Instalação manual

Copie as quatro pastas de `skills/` para a pasta de skills do seu agente. Para Codex:

```text
~/.agents/skills/
├── schwartz-copy/
├── estrutura-invisivel/
├── funil-brunson/
└── engenharia-de-criativos/
```

Reinicie o agente depois da instalação para atualizar o catálogo de skills.

## Como usar

Peça normalmente no chat:

```text
Crie uma landing page usando schwartz-copy.
Faça uma estrutura invisível desta copy, trecho por trecho.
Monte um funil low-ticket usando funil-brunson.
Transcreva este vídeo, desmonte a copy por blocos e crie uma adaptação usando engenharia-de-criativos.
```

## Estrutura

```text
skills/
├── schwartz-copy/
│   ├── SKILL.md
│   └── references/
├── estrutura-invisivel/
│   └── SKILL.md
├── funil-brunson/
│   ├── SKILL.md
│   └── frameworks/
└── engenharia-de-criativos/
    ├── SKILL.md
    ├── agents/
    └── scripts/
```

## Avisos

As skills são ferramentas de estratégia e escrita. Cases, provas, preços, urgência, escassez e resultados devem ser verdadeiros e validados para cada projeto. Os frameworks são resumos operacionais e não substituem as obras originais.

## Licença

Uso e adaptação permitidos conforme a licença MIT deste repositório.
