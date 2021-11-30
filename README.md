# sourcred-dockerized

This is a work in progress.

Run `clone.sh` to get the sourcred template-instance files

Run `build.sh` to build the docker container

Run ``

``` bash
./clone.sh
./build.sh
cp env.example .env
# Fill in the discord token in .env and add the bot to a discord server with 8 (addmin permissions)
# Add "sourcecred/discord" to the sourcecred.json list
# add guildID to /config/plugins/sourcecred/discord/config.json 
# Add channelID from guild to propsChanels channelID /config/plugins/sourcecred/discord/config.json 

# `yarn load` does not work inside the container yet
yarn
yarn load
# docker-compose -f docker-compose-setup.yml up
# docker-compose -f docker-compose-setup.yml down
docker-compose -f docker-compose.yml up -d
docker-compose logs
# docker-compose -f docker-compose-clean.yml up
```

## External Links

* [Discord | SourceCred](https://sourcecred.io/docs/beta/plugins/discord)
* [Discord Developer Portal — My Applications](https://discord.com/developers/applications)
* [Discord Developer Portal — Documentation — OAuth2](https://discord.com/developers/docs/topics/oauth2#bots)

## TODO

* Build node_modules in [ubuntu](https://hub.docker.com/_/ubuntu) container and copy them to a [node](https://hub.docker.com/_/node) container
* Get `yarn load` working from inside the container
* Traefik integration for HTTPs
* Have volume mounts fed in via environment variables
* Backup and restore script
