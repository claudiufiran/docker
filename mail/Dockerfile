FROM ubuntu:16.04
EXPOSE 25

# sendmail (postfix)
RUN echo "postfix postfix/mailname string mihneafiran.ro" | debconf-set-selections
RUN echo "postfix postfix/main_mailer_type string 'Internet Site'" | debconf-set-selections
#RUN echo "postfix postfix/mynetworks string 0.0.0.0" | debconf-set-selections
RUN apt-get update && apt-get install -y postfix
RUN sed -i '/^mynetworks =/ s/$/ 172.0.0.0\/8/' /etc/postfix/main.cf

COPY start.sh /start.sh

ENTRYPOINT ["/start.sh"]
