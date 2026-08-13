#!/usr/bin/env bash

set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target_dir="${AGENTS_SKILLS_DIR:-$HOME/.agents/skills}"
timestamp="$(date +%Y%m%d-%H%M%S)"

mkdir -p "$target_dir"

for skill in schwartz-copy estrutura-invisivel funil-brunson; do
  source_path="$repo_dir/skills/$skill"
  target_path="$target_dir/$skill"

  if [[ -e "$target_path" ]]; then
    backup_path="${target_path}.backup-${timestamp}"
    mv "$target_path" "$backup_path"
    printf 'Backup criado: %s\n' "$backup_path"
  fi

  cp -R "$source_path" "$target_path"
  printf 'Instalada: %s\n' "$target_path"
done

printf '\nInstalação concluída. Reinicie o agente para atualizar o catálogo de skills.\n'
