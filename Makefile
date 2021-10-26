usage:
	bin/makefile/usage

# start
start-app1:
	cd app1 && npm install && npm start

# Development
check-tools:
	bin/makefile/check-tools

dev-env: check-tools
	bin/makefile/dev-env

update-dev-env: check-tools
	bin/makefile/dev-env --update
