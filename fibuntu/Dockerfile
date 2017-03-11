FROM ubuntu

# basic stuff
RUN apt-get update && apt-get install -y \
	man dnsutils less nano vim ncdu mc bzip2 telnet git

# mail
RUN apt-get update && apt-get install -y mailutils


CMD ["/bin/bash"]
