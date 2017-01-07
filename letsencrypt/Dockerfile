FROM nginx:1



#letsencrypt

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list && apt-get update
RUN apt-get -y install certbot -t jessie-backports
ENV TERM=xterm
#RUN certbot certonly --webroot -w /usr/share/nginx/html/ -d aws.firan.net -d test.firan.net



#html

#COPY nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html/
