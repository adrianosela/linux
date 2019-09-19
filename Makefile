NAME:=$(shell basename `git rev-parse --show-toplevel`)

all: up

up: build 
	docker run -it $(NAME)

build:
	docker build -t $(NAME) .
