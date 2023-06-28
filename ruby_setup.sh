#!/bin/bash

set -e

rbenv init -
echo 'eval "$(rbenv init -)"' >> $HOME/.bashrc
eval "$(rbenv init -)"
rbenv install 3.2.2
rbenv global 3.2.2
gem install bundler
