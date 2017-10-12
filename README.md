Usage
-----

#### Features
- Downloads and adds required glibc to Alpine base image
- Downloads and runs Agent JAR from given Bamboo Server

#### Run
```
docker run -d --rm -e BAMBOO_SERVER_HOST=my-bamboo-server --name=bamboo-agent jimfdavies/bamboo-agent-alpine
```
#### Watch it load
```
docker logs -f bamboo-agent
```
#### Get rid of it
```
docker rm -f bamboo-agent
```
