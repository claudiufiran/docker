FROM ubuntu

# enable 32bit
RUN dpkg --add-architecture i386

# install add-apt-repository
RUN apt-get update && apt-get install -y software-properties-common

# add repo
RUN add-apt-repository -y ppa:wine/wine-builds && apt-get update

# install wine
RUN apt-get install -y --install-recommends winehq-staging

# remove unneeded things
RUN apt-get purge -y software-properties-common && apt-get autoclean -y

