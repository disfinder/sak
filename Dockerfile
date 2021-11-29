FROM ubuntu:20.04

RUN sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:' /etc/dpkg/dpkg.cfg.d/excludes
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install --no-install-recommends -y \
        curl \
        fdupes \
        ffmpeg \
        git \
        gnupg \
        less \
        man \
        man-db \
        mc \
        p7zip-full \
        pip \
        python3 \
        vim

RUN echo y | unminimize

RUN pip install --upgrade youtube-dl
