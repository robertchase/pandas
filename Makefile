.PHONY: build start

ifeq ($(GIT),)
  GIT := $(HOME)/git
endif

DOCKER_IMAGE := pandas

start:
	docker run -it --rm -v $(GIT):/opt/git -w /opt/git/pandas $(DOCKER_IMAGE) bash

build:
	docker build -t $(DOCKER_IMAGE) .
