docker run -d -p 80:80 -p 443:443 --name letsencrypt letsencrypt
docker ps -l

echo "-->   certbot certonly --webroot -w /usr/share/nginx/html/ -d aws.firan.net -d test.firan.net"
docker exec -ti letsencrypt /bin/bash

docker stop letsencrypt
docker rm letsencrypt
