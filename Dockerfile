FROM sickcodes/docker-osx:ventura as builder

COPY ./brew_install.sh /tmp/brew_install.sh

# Install Homebrew
RUN curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh -o /tmp/install.sh
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh

# Set Homebrew environment variables explicitly
ENV PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
ENV MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
ENV INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

# Install node version 14
RUN brew install node

ENTRYPOINT ["/bin/bash"]
