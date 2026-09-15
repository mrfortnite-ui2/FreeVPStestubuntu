
FROM ubuntu:20.04


RUN apt-get install -y shellinbox && \
apt-get install -y systemd &&& \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo 'root:root' | chpasswd

EXPOSE 4200

CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
