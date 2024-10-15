FROM ubuntu
RUN apt update
RUN apt install -y openssh-server sudo
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN  echo 'root:123456' | chpasswd
RUN service ssh start
COPY entry.sh /entry.sh
COPY co.sh /co.sh
CMD ["/entry.sh"]