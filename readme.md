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

image name: cleik/node-web-app
repo: cleik/test-repo

```
docker tag cleik/node-web-app cleik/test-repo
docker push cleik/test-repo
```

## Deploy on Akash

- configure app-test.yml
- use akashlytics deploy tool
