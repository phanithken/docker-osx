#!/bin/bash

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/arch/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install node@14
brew install node@14
