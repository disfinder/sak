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

RUN useradd -m -G root -u 1027 user
USER user

# RUN apt-get install --no-install-recommends -y \
#         software-properties-common

# RUN apt-get install --no-install-recommends -y \

#_# need graph server
# RUN add-apt-repository ppa:dupeguru/ppa     
# RUN apt-get update
# RUN apt-get install --no-install-recommends -y \
#     dupeguru

        # arping \
        # arptables \
        # bridge-utils \
        # ca-certificates \
        # conntrack \
        # curl \
        # dnsutils \
        # ethtool \
        # iperf \
        # iperf3 \
        # iproute2 \
        # # ipsec-tools \
        # ipset \
        # iptables \
        # iputils-ping \
        # jq \
        # kmod \
        # ldap-utils \
        # less \
        # libpcap-dev \
        # man \
        # manpages-posix \
        # mtr \
        # net-tools \
        # netcat \
        # netcat-openbsd \
        # openssl \
        # openssh-client \
        # psmisc \
        # socat \
        # tcpdump \
        # telnet \
        # tmux \
        # traceroute \
        # tcptraceroute \
        # tree \
        # ngrep \
        # vim \
        # wget
