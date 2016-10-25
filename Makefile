all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""   1. make server       -  Make a KVM host

server: serverplay

serverplay:
	ansible-playbook kvmsible.yaml

auto: IP NAME

IP:
	@while [ -z "$$IP" ]; do \
		read -r -p "Enter the IP you wish to associate with this KVM host [IP]: " IP; echo "$$IP">>IP; cat IP; \
	done ;

NAME:
	@while [ -z "$$NAME" ]; do \
		read -r -p "Enter the name you wish to associate with this  [NAME]: " NAME; echo "$$NAME">>NAME; cat NAME; \
	done ;

bootstrap:
	ansible-playbook bootstrapAnsible.yaml
