#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 2 || $# -gt 3 ]]; then
  printf 'Uso: %s <video> <diretorio-de-frames> [intervalo-em-segundos]\n' "$0" >&2
  exit 1
fi

input_path="$1"
output_dir="$2"
interval="${3:-3}"

if [[ ! -f "$input_path" ]]; then
  printf 'Erro: arquivo nao encontrado: %s\n' "$input_path" >&2
  exit 1
fi

if ! command -v ffmpeg >/dev/null 2>&1; then
  printf 'Erro: ffmpeg nao encontrado.\n' >&2
  exit 1
fi

if ! [[ "$interval" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  printf 'Erro: intervalo invalido: %s\n' "$interval" >&2
  exit 1
fi

mkdir -p "$output_dir"
ffmpeg -hide_banner -loglevel error -i "$input_path" -vf "fps=1/$interval" -q:v 2 "$output_dir/frame-%04d.jpg"

printf 'Frames salvos em: %s\n' "$output_dir"
