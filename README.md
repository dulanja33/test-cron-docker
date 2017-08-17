#Download the attached file (test-cron-docker.zip) and extract it.
#Then run the following commands in the extracted directory.

``` java
//to build the docker image
docker build --rm -t cron .

//run the build docker image
docker run -d cron

//check cron docker container is up and running
docker ps

//execute tail command to check cron job is running 
docker exec -it <cron container id> tail -f /var/log/etl.log

```
