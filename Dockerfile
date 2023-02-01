FROM ubuntu:20.04

ENV LANG C.UTF-8
RUN sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:' /etc/dpkg/dpkg.cfg.d/excludes
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install --no-install-recommends -y \
        curl \
        bash-completion \
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


RUN pip install --upgrade youtube-dl yt-dlp
RUN pip install tqdm argparse psutil

# why 1027? - its an ID of a user on my host machine
RUN useradd -m -G root -u 1027 user
USER user
