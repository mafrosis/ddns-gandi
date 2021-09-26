.PHONY: build
build:
	go build -o bin/ddns-gandi

.PHONY: build-mips
build-mips:
	# target Edgerouter-X-SFP
	GOOS=linux GOARCH=mipsle go build -o bin/ddns-gandi

.PHONY: deploy
deploy:
	scp bin/ddns-gandi edgerouter:
	scp ddns-gandi.sh edgerouter:
	ssh edgerouter 'chmod +x ddns-gandi*; sudo chown root:root ddns-gandi*; sudo mv ddns-gandi.sh /etc/dhcp/dhclient-exit-hooks.d/; sudo mv ddns-gandi /config/scripts/'
