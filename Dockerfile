FROM sickcodes/docker-osx:ventura as builder

# install homebrew
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

COPY ./provision.sh /home/arch/OSX-KVM/provision.sh

RUN /home/arch/OSX-KVM/provision.sh
ENTRYPOINT ["/bin/bash"]
