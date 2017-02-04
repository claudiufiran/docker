# stop containers
#docker stop $(docker ps -a -q)

# remove containers
#docker rm $(docker ps -a -q)
# remove exited containers
docker rm -v $(docker ps -a -q -f status=exited)

# remove images
#docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
# remove dangling images
docker rmi $(docker images -f "dangling=true" -q)

# remove dangling volumes
docker volume rm $(docker volume ls -qf dangling=true)

# clean up more
#docker run -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker:/var/lib/docker --rm martin/docker-cleanup-volumes
