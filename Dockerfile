FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

# 1. Install the full headless toolset + sudo
RUN apt update && apt install -y \
    sudo \
    bash-completion \
    kali-linux-headless \
    && apt clean

# 2. Setup user
ARG USER_PASS
RUN useradd -m -s /bin/bash heverz && \
    echo "heverz:${USER_PASS}" | chpasswd && \
    usermod -aG sudo heverz


USER heverz
WORKDIR /home/heverz

CMD ["/bin/bash"]
