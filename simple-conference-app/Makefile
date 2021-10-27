build: serve

serve: mkcert
	npx live-server --port=4444 --https=config/https-config.js

mkcert: config/localhost.pem

config/localhost.pem:
	pushd config && mkcert localhost && popd

clean:
	rm -rf config/localhost*

