FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x ./entrypoint.sh

RUN apt update && apt upgrade -y && apt install -y git curl wget aria2 \
    build-essential zlib1g-dev libssl-dev libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev

RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git

RUN ./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer

ENV PATH="/root/.ebcli-virtual-env/executables:${PATH}"
ENV PATH="/root/.pyenv/versions/3.7.2/bin:${PATH}"

ENTRYPOINT ["/entrypoint.sh"]