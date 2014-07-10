# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

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

# Modify the terminal's default ANSI colors for the Base16 Tomorrow Dark theme.
. ~/bin/base16-tomorrow.dark.sh