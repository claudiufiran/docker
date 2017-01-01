FROM centos

WORKDIR /root
COPY virt-what-1.15.tar.gz /root

RUN tar -xvzf virt-what-1.15.tar.gz
RUN yum -y install gcc make which

WORKDIR /root/virt-what-1.15
RUN ./configure
RUN make
RUN make install

CMD /usr/local/sbin/virt-what


