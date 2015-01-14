FROM ubuntu:14.04
MAINTAINER kazuaki

# Install ssh
RUN apt-get update
RUN apt-get install -y openssh-server git

# Setting ssh
RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd
CMD ["/usr/sbin/sshd", "-D"]

# Create user and set sudo password
RUN useradd kazucocoa
RUN echo kazucocoa:kazucocoa | chpasswd

# Setting ssh login without sudo
RUN mkdir -p /home/kazucocoa/.ssh
RUN chown kazucocoa /home/kazucocoa/.ssh
RUN chmod 700 /home/kazucocoa/.ssh
ADD ./id_rsa.pub /home/kazucocoa/.ssh/authorized_keys
RUN chown kazucocoa /home/kazucocoa/.ssh/authorized_keys
RUN chmod 700 /home/kazucocoa/.ssh/authorized_keys

# Setting sudoers
RUN echo "kazucocoa   ALL=(ALL)   ALL" > /etc/sudoers.d/kazucocoa

###
EXPOSE 22

ENV TEST=test
WORKDIR /root

CMD ["/usr/bin/wc", "--help"]

