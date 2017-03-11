FROM ubuntu

# editors
RUN apt-get update && apt-get install -y \
	less nano vim mc

# files
RUN apt-get update && apt-get install -y \
	ncdu bzip2 git

# network
RUN apt-get update && apt-get install -y \
	dnsutils telnet iputils-ping

# other stuff
RUN apt-get update && apt-get install -y \
	man 

# mail
#RUN apt-get update && apt-get install -y mailutils


CMD ["/bin/bash"]
