for v in $(docker volume ls -q); do echo $v - $(docker ps -f "volume=$v" --format '{{.Names}}\t{{.Image}}'); done

