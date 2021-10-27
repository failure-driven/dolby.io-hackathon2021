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

load-env: check-tools
	@echo "NOW RUN\n\tsource bin/load-env\n"

dev-env: check-tools
	bin/makefile/dev-env

update-dev-env: check-tools
	bin/makefile/dev-env --update

# Deployment
deploy-app2:
	HEROKU_APP_NAME=dolbyio-hack2 \
	APPLICATION_DIR=app2 \
  	bin/makefile/heroku-create

deploy: deploy-app2

