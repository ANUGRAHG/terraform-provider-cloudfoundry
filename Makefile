default: build

SETENV=
ifeq ($(OS),Windows_NT)
	SETENV=set
endif

lefthook:
	@go install github.com/evilmartians/lefthook@latest
	lefthook install

build:
	go build -v ./...

install: build
	go install -v ./...

lint:
	golangci-lint run

generate:
	go generate ./...

fmt:
	gofmt -s -w -e .
	
# Run acceptance tests
.PHONY: test
test:
	go test -cover  -count=1 ./... -v $(TESTARGS) -timeout 10m
