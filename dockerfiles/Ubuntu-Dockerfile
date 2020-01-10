# Pull base image
FROM ubuntu:latest

# Install basic tooling and deps
RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y byobu curl git htop man unzip vim wget build-essential golang-go && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p ~/go/src/github.com/adrianosela
WORKDIR root/go/src/github.com/adrianosela

# Land in a bash term
CMD ["/bin/bash"]
