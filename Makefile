NAME:=$(shell basename `git rev-parse --show-toplevel`)

kali:
	docker build -f ./dockerfiles/Kali-Dockerfile -t kali-$(NAME) .
	docker run -it kali-$(NAME)

ubuntu:
	docker build -f ./dockerfiles/Ubuntu-Dockerfile -t ubuntu-$(NAME) .
	docker run -it ubuntu-$(NAME)

alpine:
	docker build -f ./dockerfiles/Alpine-Dockerfile -t alpine-$(NAME) .
	docker run -it alpine-$(NAME)
