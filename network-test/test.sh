clear

#up

cd compose1
docker-compose up -d 
docker-compose ps
cd ..

cd compose2
docker-compose up -d 
docker-compose ps
cd ..



# test

echo
docker ps 
echo
docker network ls
echo
docker exec -it compose2_web_1 ping -c 4 compose1_web_1
echo
docker network inspect compose1_common_net



# down

cd compose2
docker-compose down
cd ..

cd compose1
docker-compose down
cd ..

#echo 
#docker ps
