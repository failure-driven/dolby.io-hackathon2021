# TODO

## iteration 0

- [ ] setup monorepo
  - [x] netlify subdirectory deploy
  - [x] netlify monorepo multi deploy - [monorepo docs](deploy
    https://docs.netlify.com/configure-builds/common-configurations/monorepos/)
  - [ ] ignore certain builds for netilfy deploys -
    https://docs.netlify.com/configure-builds/common-configurations/ignore-builds/
  - [x] heroku subdirectory sinatra deploy - [monorepo
    example](https://jtway.co/deploying-subdirectory-projects-to-heroku-f31ed65f3f2)
  - [ ] heroku subdirectory rails deploy
  - [ ] how to set netlify ENV VARS via ansible-vault

## examples

- [ ] rust functions on netlify - https://www.netlify.com/blog/2021/10/14/write-netlify-functions-in-rust/
- [ ] dolby API token server - https://github.com/dolbyio-samples/communications-api-token-server-netlify
- [ ] cloudinary examples ...?

## DONE

- [x] basic conference app - as per https://docs.dolby.io/communications-apis/docs/create-a-basic-audio-conference-application
  - [x] deploy as netlify app
  - [x] get working with VoxeetSDK from node_modules
  - [x] make sure ui.js and client.js export correctly

