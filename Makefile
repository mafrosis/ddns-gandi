.PHONY: build
build:
	go build -o bin/ddns-gandi

.PHONY: build-mips
build-mips:
	# target Edgerouter-X-SFP
	GOOS=linux GOARCH=mipsle go build -o bin/ddns-gandi
