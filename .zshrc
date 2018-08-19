# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="sorin"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(brew brew-cask cp docker git github gitignore golang gradle history lein osx sudo)

source $ZSH/oh-my-zsh.sh

# Enable extended globbing
setopt extended_glob

# Load the shell dotfiles
# (~/.extra) can be used for other settings you don't want to commit.
for file in ~/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Enable awscli completion
source $(brew --prefix awscli)/libexec/bin/aws_zsh_completer.sh

# Enable kubectl completion
source <(kubectl completion zsh)

# Base16 shell script for configuring colors
source ~/bin/base16-tomorrow.dark.sh

# Don't share history between iTerm2 panes
unsetopt inc_append_history
unsetopt share_history

# Shortcuts
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
bindkey \^U backward-kill-line

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
