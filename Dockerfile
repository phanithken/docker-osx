FROM sickcodes/docker-osx:ventura as builder

# install homebrew
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# setup homebrew
RUN (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/arch/.profile
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install node@14
RUN brew install node@14
