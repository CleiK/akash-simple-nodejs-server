# Learn how to dockerize and deploy a nodejs server on Akash decentralized cloud

## Dockerize a simple node js server

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

### Build, deploy and run docker image

```
sudo docker build . -t cleik/node-web-app
sudo docker run -p 49160:8080 -d cleik/node-web-app
sudo docker ps
sudo docker logs <containerid>
sudo docker stop <containerid>
```

### Test it

```
curl -i localhost:49160
```

### Publish docker image

Create a docker hub account, create a public repo, then publish you image:

- image name: cleik/node-web-app
- repo: cleik/test-repo

```
docker tag cleik/node-web-app cleik/test-repo
docker push cleik/test-repo
```

## Deploy on Akash


- setup a wallet (keplr for example) with just more than 5 akt token
- configure app-test.yml with your akash network address
- use akashlytics deploy tool
- deploy and accept a bid (current config cost around 1.32$/month but you need to lock 5 akt)
