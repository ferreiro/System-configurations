# Check if Homebrew is installed 

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update # Installed. So update brew
fi

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install system tools

brew install node
brew install git
brew install wget

# Install Mac Applications

#brew cask install firefox
brew cask install sublime-text3
brew cask install google-chrome
brew cask install spotify
