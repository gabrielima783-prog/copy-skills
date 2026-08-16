---
name: engenharia-de-criativos
description: "Transcreve e desmonta criativos em audio ou video para identificar estrutura, blocos, angulo, formato, promessa, mecanismo, consciencia, lead, provas e CTA, depois adapta a engenharia para criar uma nova peca. Use quando o usuario enviar midia para transcrever, analisar, fazer raio-X, avaliar a copy, replicar a estrutura ou transformar uma referencia em novo criativo."
---

# Engenharia de criativos

Transformar um criativo em um mapa reutilizavel: extrair a fala, observar o video, diagnosticar a persuasao e construir uma nova peca.

## Escolher o modo

- **Transcricao:** executar somente a etapa tecnica quando o usuario pedir texto ou legenda.
- **Engenharia completa:** transcrever, observar e desmontar quando pedir analise, estrutura, raio-X ou avaliacao.
- **Criacao pela referencia:** executar a engenharia completa antes de escrever a adaptacao.

Nao depender de uma skill de roteiro. Entregar diretamente fala, visual, texto na tela e funcao de copy.

## Preparar o ambiente

Resolver o diretorio desta skill a partir do caminho do `SKILL.md`. Na primeira execucao, rodar:

```bash
<diretorio-da-skill>/scripts/setup.sh
```

O script cria `.venv` e `models/` dentro da skill. Exigir `python3` e `ffmpeg`. Se `ffmpeg` estiver ausente, informar a dependencia e orientar a instalacao adequada ao sistema operacional.

## Transcrever

Executar:

```bash
<diretorio-da-skill>/scripts/transcribe.sh "/caminho/arquivo.mp4"
```

Por padrao, salvar em `engenharia-de-criativos-output/<nome-limpo>/` no projeto atual. Aceitar um segundo argumento para outro diretorio de saida dentro do projeto:

```bash
<diretorio-da-skill>/scripts/transcribe.sh "/caminho/arquivo.mp4" "/caminho/do/projeto/analises"
```

Conferir `.txt`, `.srt`, `.vtt`, `.tsv` e `.json`. Usar `turbo` primeiro. Se houver perda relevante por ruido, fala rapida ou diccao, executar novamente com `WHISPER_MODEL=medium`.

Corrigir apenas erros evidentes de nomes, cidades e termos. Sinalizar correcoes incertas e trechos inaudiveis.

## Observar o criativo

Nao inferir o formato visual somente pela fala. Inspecionar o video e identificar:

- formato: talking head, UGC, entrevista, demonstracao, narracao, montagem, estatico animado ou hibrido;
- abertura visual, enquadramento, ritmo, cortes, imagens de apoio e mudancas de cena;
- texto na tela, legendas, provas exibidas, autoridade e CTA visual;
- relacao entre fala, imagem e texto.

Quando a ferramenta nao permitir assistir ao video diretamente, extrair frames:

```bash
<diretorio-da-skill>/scripts/extract-frames.sh "/caminho/arquivo.mp4" "/pasta-da-analise/frames"
```

Usar os timestamps da legenda para alinhar os elementos visuais aos blocos da copy. Marcar como indeterminado tudo que nao estiver visivel ou audivel.

## Desmontar a copy

Usar `estrutura-invisivel` para a auditoria trecho por trecho e `schwartz-copy` para diagnosticar e adaptar a copy. Essas skills integram Schwartz, Great Leads, Brunson e Hormozi. Nao duplicar a teoria.

Para cada bloco real do criativo, registrar:

1. intervalo de tempo;
2. fala ou texto principal;
3. funcao na persuasao;
4. recurso visual ou texto na tela;
5. principio de copy;
6. transicao para o proximo bloco.

Consolidar:

- publico e desejo dominante;
- consciencia e sofisticacao;
- formato, angulo, gancho e arquetipo de lead;
- problema, dor, inimigo ou erro atacado;
- grande ideia, promessa e resultado desejado;
- mecanismo do problema e mecanismo da solucao;
- produto, oferta, prova, autoridade, objecoes e CTA;
- progressao de crenca;
- pontos fortes, gargalos e elementos dispensaveis;
- estrutura abstrata reutilizavel sem copiar frases.

Salvar a analise como `analise-copy.md` na pasta da transcricao.

## Criar a adaptacao

Preservar a logica persuasiva validada e trocar publico, contexto, promessa, mecanismo, prova e oferta pelos dados do projeto de destino. Nao copiar frases distintivas nem criar alegacoes sem sustentacao.

Apresentar objetivo, publico, angulo, promessa, mecanismo, formato e CTA. Depois entregar:

| Tempo | Fala | Visual ou cena | Texto na tela | Funcao de copy |
|---|---|---|---|---|

Salvar como `novo-criativo.md` quando a criacao fizer parte do pedido.

## Formato da resposta

Entregar nesta ordem:

1. transcricao limpa;
2. mapa dos blocos por tempo;
3. diagnostico estrategico;
4. estrutura reutilizavel;
5. pontos fortes e gargalos;
6. novo criativo, quando solicitado.

Separar observacoes objetivas de interpretacoes.
