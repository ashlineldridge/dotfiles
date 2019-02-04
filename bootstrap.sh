#!/usr/bin/env bash

set -eou pipefail
shopt -s extglob

prezto_home="${HOME}/.zprezto"
repo_home="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"

# Make sure Prezto has been installed
if [[ ! -d "${prezto_home}" ]]; then
  echo >&2 "Looks like Prezto hasn't been installed. See README.md."
  exit 1
fi

# Clean out any Prezto changes and get latest
cd "${prezto_home}"
git checkout -- .
git pull
git submodule update --init --recursive

# Delete existing Prezto-owned RC files and re-link
cd "${prezto_home}/runcoms"
for rc_file in z*; do
  rm -f "${HOME}/.${rc_file}" 2> /dev/null || true
  ln -s "${prezto_home}/runcoms/${rc_file}" "${HOME}/.${rc_file}"
done

# Update ~/.zshrc to source dotfile repo zshrc
echo >&2 'Updating ~/.zshrc...'
echo "source ${repo_home}/dots/zshrc" >> "${HOME}/.zshrc"

# Link each of the dotfile repo files into the home directory
cd "${repo_home}/dots"
for dot_file in !(zshrc); do
  rm -f "${HOME}/.${dot_file}" 2> /dev/null || true
  echo >&2 "Linking ~/.${dot_file}..."
  ln -s "${repo_home}/dots/${dot_file}" "${HOME}/.${dot_file}"
done

# Setup bin directory
mkdir -p "${HOME}/bin"
cp "${repo_home}"/bin/* "${HOME}/bin"
