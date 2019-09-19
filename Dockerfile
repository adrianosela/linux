# Pull base image
FROM ubuntu:latest

# Install basic tooling and deps
RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y byobu curl git htop man unzip vim wget build-essential && \
  rm -rf /var/lib/apt/lists/*

# Land in a bash term
CMD ["/bin/bash"]
