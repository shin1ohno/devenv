# Setup files for development environments

- Install latest Xcode from AppStore
- ```sudo xcode-select --install```
- [Install homebrew](http://brew.sh)
- brew install rbenv ruby-build
- Install latest ruby wirh rbenv
- ```gem install brewdle && brewdle```
- [Install yadr](https://github.com/skwp/dotfiles)
- Link zsh before files e.g. ```ln -s ~/Documents/work/devenv/zsh/before/*.zsh .```
  - ```boot2docker init && boot2docker shellinit``` to check docker envs
- Set invisible for some files e.g. ```SetFile -a V ~/yankring_history_v2.txt```
