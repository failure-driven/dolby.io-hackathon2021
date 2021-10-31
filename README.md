# dolby.io-hackathon2021

## tl;dr

```
make

make load-env         # will need password
source bin/load-env

make start-app1
make start-app2
make start-simple-conference-app

make build

make deploy
```

## monrepo

- [app1](/app1)
  simple static html page in a node app hosted on netilfy
  ```
  cd app1
  npm install
  npm start
  ```
  - deployed to https://dolbyio-hack1.netlify.app/
  - [![Netlify Status](https://api.netlify.com/api/v1/badges/cafacef8-6a47-4d74-a635-03135d4f1272/deploy-status)](https://app.netlify.com/sites/dolbyio-hack1/deploys)

- [app2](/app2)
  simple ruby sinatra app to be hosted on heroku
  ```
  cd app1
  bundle
  bundle exec rackup
  ```
  - deployed to https://dolbyio-hack2.herokuapp.com/

- [simple-conference-app](/simple-conference-app)
  ```
  source bin/load-env
  make start-simple-conference-app
  ```
  - deployed to https://dolbyio-simple-conference-app.netlify.app/
  - [![Netlify Status](https://api.netlify.com/api/v1/badges/899ea433-8e7f-4a78-ab14-79f8a7a8bec9/deploy-status)](https://app.netlify.com/sites/dolbyio-simple-conference-app/deploys)

- [feel-demos](/feel-demos)
  ```
  source bin/load-env
  make feel-demos
  ```
  - deployed to https://dolbyio-feel-demos.netlify.app/
  - [![Netlify Status](https://api.netlify.com/api/v1/badges/98137af0-8268-4f5c-adb1-93299f1a21aa/deploy-status)](https://app.netlify.com/sites/dolbyio-feel-demos/deploys)

## ansible vault

secrets are held in env/*.secerts

```
# decrypt - will need password
ansible-vault decrypt --ask-vault-pass env/*.secrets

# encrypt - will need password
ansible-vault encrypt env/*.secrets
```

