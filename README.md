# sourcred-dockerized

This is a work in progress.

Run `clone.sh` to get the sourcred template-instance files

Run `build.sh` to build the docker container

Run ``

``` bash
./clone.sh
./build.sh
docker-compose -f docker-compose-setup.yml up
docker-compose -f docker-compose-setup.yml down
docker-compose -f docker-compose.yml up -d
```