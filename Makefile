usage:
	bin/makefile/usage

# build
prettier-check:
	bin/makefile/prettier --check

build: prettier-check

# start
start-app1:
	cd app1 && npm install && npm start

start-app2:
	pushd app2 && bundle && bundle exec rackup

# Development
prettier:
	bin/makefile/prettier

# Development Setup
check-tools:
	bin/makefile/check-tools

dev-env: check-tools
	bin/makefile/dev-env

update-dev-env: check-tools
	bin/makefile/dev-env --update
