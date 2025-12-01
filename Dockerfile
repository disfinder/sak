FROM ubuntu:24.04

# why 1027? - its an ID of a user on my host machine
RUN useradd -m -G root -u 1027 user
COPY dotfiles/* /home/user/

ENV LANG C.UTF-8
RUN sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:' /etc/dpkg/dpkg.cfg.d/excludes
RUN \
  apt-get update && \
  apt-get install  --no-install-recommends -y software-properties-common && \
  add-apt-repository ppa:aos1/diff-so-fancy && \
  apt-get update && \
  DEBIAN_FRONTEND="noninteractive" apt-get install \
        --no-install-recommends -y \
    bash-completion \
    curl \
    diff-so-fancy \
    fdupes \
    ffmpeg \
    g++ \
    gcc \
    git \
    gnupg \
    less \
    man \
    man-db \
    mc \
    p7zip-full \
    pip \
    pipx \
    python3-dev \
    python3-full \
    vim \
  && echo "Done"

RUN curl -fsSL https://deno.land/install.sh | sh

USER user
ENV PATH "$PATH:/home/user/.local/bin"

RUN \
  pip install \
        --upgrade \
        --break-system-packages \
    tqdm \
    argparse \
    psutil \
    youtube-dl \
    yt-dlp \
    setuptools \
    wheel
