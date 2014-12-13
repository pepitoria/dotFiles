# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#
brew update
brew doctor
export PATH="/usr/local/bin:$PATH"
brew install node

npm install -g grunt-cli
npm install -g bower
npm install -g karma-cli
