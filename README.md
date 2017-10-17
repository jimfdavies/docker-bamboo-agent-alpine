Usage
-----

#### Features
- Downloads and adds required glibc to Alpine base image
- Downloads and runs Agent JAR from given Bamboo Server

#### Usage
IMPORTANT: The environment variable $AGENT_VERSION must match your server version.
You can find this from http://my-bamboo-server:8085/admin/agent/addRemoteAgent.action.

Agent assumes that correct [network connectivity](https://confluence.atlassian.com/bamkb/troubleshooting-remote-agents-216957427.html) to the Server is in place.

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
