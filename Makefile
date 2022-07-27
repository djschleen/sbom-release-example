.PHONY: help

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

title:
	@echo "Tutorial Makefile"
	@echo "-----------------"

build: ## Builds the application
	@echo Building binaries...
	@go get -u ./...
	@go mod tidy
	@go build

check: build ## Tests the pre-commit hooks if they exist
	./hookz reset --verbose --debug --verbose-output 
	. .git/hooks/pre-commit

test: ## Runs tests and coverage
	@go test -v -coverprofile=coverage.out ./... && go tool cover -func=coverage.out

clean:
	@echo Resetting build artifacts...
	@rm sbom-release-example
	@rm coverage.out

all: title build test ## Makes all targets

