all: build

build:
	@docker build --tag=carlipa/supervisord:latest .

base:
	@docker pull ubuntu:14.04

rebuild: base
	@docker build --tag=carlipa/supervisord:latest .

release: rebuild
	@docker build --tag=carlipa/supervisord:14.04.$(shell date +%Y%m%d) .
