#!/usr/bin/env bash

set -euo pipefail

skill_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
venv_dir="$skill_dir/.venv"

if ! command -v python3 >/dev/null 2>&1; then
  printf 'Erro: python3 nao encontrado.\n' >&2
  exit 1
fi

if ! command -v ffmpeg >/dev/null 2>&1; then
  printf 'Erro: ffmpeg nao encontrado. Instale o ffmpeg e execute novamente.\n' >&2
  exit 1
fi

if [[ ! -x "$venv_dir/bin/python" ]]; then
  python3 -m venv "$venv_dir"
fi

"$venv_dir/bin/python" -m pip install --upgrade pip openai-whisper
mkdir -p "$skill_dir/models"

printf 'Ambiente pronto em: %s\n' "$venv_dir"
