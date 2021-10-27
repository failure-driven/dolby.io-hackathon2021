# dolby.io-hackathon2021

## tl;dr

```
make

make load-env
source bin/load-env

make start-app1
make start-app2

make build

make deploy
```

## monrepo

- [app1](/app1)
  simple static html page in a node app hosted on netilfy
  ```
  npm install
  npm start
  ```
  - deployed to https://dolbyio-hack1.netlify.app/

- [app2](/app2)
  simple ruby sinatra app to be hosted on heroku
  ```
  bundle
  bundle exec rackup
  ```
  - deployed to https://dolbyio-hack2.herokuapp.com/

