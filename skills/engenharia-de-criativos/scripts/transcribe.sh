#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 1 || $# -gt 2 ]]; then
  printf 'Uso: %s <audio-ou-video> [diretorio-de-saida]\n' "$0" >&2
  exit 1
fi

input_path="$1"
output_root="${2:-$PWD/engenharia-de-criativos-output}"
skill_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
whisper_bin="$skill_dir/.venv/bin/whisper"
model="${WHISPER_MODEL:-turbo}"
language="${WHISPER_LANGUAGE:-Portuguese}"

if [[ ! -f "$input_path" ]]; then
  printf 'Erro: arquivo nao encontrado: %s\n' "$input_path" >&2
  exit 1
fi

if [[ ! -x "$whisper_bin" ]]; then
  printf 'Erro: ambiente ausente. Execute %s/scripts/setup.sh primeiro.\n' "$skill_dir" >&2
  exit 1
fi

base_name="$(basename "$input_path")"
clean_name="${base_name%.*}"
clean_name="$(printf '%s' "$clean_name" | tr '[:upper:]' '[:lower:]' | tr -cs '[:alnum:]' '-' | sed 's/^-//; s/-$//')"
output_dir="$output_root/$clean_name"

mkdir -p "$output_dir" "$skill_dir/models"

"$whisper_bin" "$input_path" \
  --model "$model" \
  --model_dir "$skill_dir/models" \
  --language "$language" \
  --task transcribe \
  --output_format all \
  --output_dir "$output_dir"

printf 'Transcricao salva em: %s\n' "$output_dir"
