all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""   1. make server       -  Make a KVM host

server: serverplay

serverplay:
	ansible-playbook kvmsible.yaml

