FROM ubuntu:18.04

USER root

RUN yes | unminimize

RUN apt-get update && \
    apt-get install -y dialog && \
    apt-get install -y apt-utils && \
    apt-get upgrade -y

RUN apt-get install -y man-db &&\
    rm -r /var/lib/apt/lists/*

RUN apt-get update &&\
    apt-get install -y build-essential &&\
    apt-get install -y aptitude &&\
    apt-get install -y sudo &&\
    apt-get install -y clang && \
    apt-get install -y gcc && \
    apt-get install -y g++ && \
    apt-get install -y gdb && \
    apt-get install -y clang-tidy && \
    apt-get install -y clang-format && \
    apt-get install -y cmake-curses-gui && \
    apt-get install -y llvm 

# This adds the `default` user in to sudoers with full privileges:
RUN HOME=/home/default && \
    mkdir -p ${HOME} && \
    GROUP_ID=1000 && \
    USER_ID=1000 && \
    groupadd -r default -f -g "$GROUP_ID" && \
    useradd -u "$USER_ID" -r -g default -d "$HOME" -s /sbin/nologin \
    -c "Default Application User" default && \
    chown -R "$USER_ID:$GROUP_ID" ${HOME} && \
    usermod -a -G sudo default && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++

RUN apt-get update &&\
    apt-get install -y vim && \
    apt-get install -y make && \
    apt-get install -y cmake && \
    apt-get install -y git && \
    apt-get install -y tmux &&\
    apt-get install -y libssl-dev && \
    apt-get install -y python-pip && \
    apt-get install -y python3-pip && \
    python -m pip install --upgrade pip && \
    python -m pip install --upgrade cldoc &&\
    ( \
            unset CC && \
            unset CXX && \
            python -m pip install jupyter \
    )

RUN apt-get install -y libboost-all-dev=1.65.1.0ubuntu1 && \
    apt-get install -y less && \
    apt-get install -y curl && \
    apt-get install -y wget && \
    apt-get install -y gource && \
    apt-get install -y phantomjs && \
    apt-get install -y libpng-dev && \
    apt-get install -y zlib1g-dev

RUN apt-get install -y default-jre &&\
    apt-get install -y default-jdk

RUN cp /root/.bashrc /home/default/ &&\
    chown -R default:default /home/default/.bashrc &&\
    chmod 775 -R /home/default/.bashrc

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib

USER default


RUN git clone --recursive https://github.com/marcofavorito/dotfiles.git /home/default/.dotfiles
RUN /home/default/.dotfiles/script/bootstrap

WORKDIR /home/default 

ENTRYPOINT []

