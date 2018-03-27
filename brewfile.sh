# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# Install wget with IRI support
brew install wget --with-iri

# Install MacVim with LUA support
brew install macvim --with-cscope --with-lua --override-system-vim

# Install other useful binaries
brew install git
brew install tree
brew install jq

# Install development languages and tooling
brew install gradle
brew install groovy
brew install maven

# Install Homebrew Cask
brew install caskroom/cask/brew-cask

# Install cloud tools
brew install awscli
brew cask install google-cloud-sdk

# Remove outdated versions from the cellar
brew cleanup

# Install Ammonite (not in brew yet)
curl -L -o /usr/local/bin/amm https://git.io/vioDM && chmod +x /usr/local/bin/amm

# Install Hub (Github git helper)
brew install hub
