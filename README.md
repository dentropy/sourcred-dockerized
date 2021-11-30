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
docker-compose -f docker-compose-setup.yml up
docker-compose -f docker-compose-setup.yml down
docker-compose -f docker-compose.yml up -d
```

# [Discord | SourceCred](https://sourcecred.io/docs/beta/plugins/discord)