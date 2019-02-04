# Dot Files Repo

**Run sheet**
1. Install [Homebrew](https://brew.sh)
1. Install [Prezto](https://github.com/sorin-ionescu/prezto)
1. Install [iTerm](https://www.iterm2.com/downloads.html)
1. Run `brew bundle` from the root of this repo
1. Run `bootstrap.sh` from the root of this repo
1. Install fonts in `iterm` directory
1. Make **iTerm** the default shell (from menu)
1. Install **iTerm** [shell integration](https://www.iterm2.com/shell_integration.html) (from menu)

1. Set up **Vim** with:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

2. Run ./brewfile.sh
3. Run ./setup-vim.sh
4. Install Oh-my-Zsh
5. Setup iTerm:
    - Install fonts in iterm2 directory
    - Setup iTerm appearance preferences
    - Create iTerm profiles for Base16 themes (remember to match iTerm theme to .vimrc theme to Base16 shell script that is sourced in .zshrc)
