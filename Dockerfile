FROM debian:buster
RUN apt-get update
RUN apt-get install -y bash curl default-mysql-client rsync screen ssh-client tmux unzip vim
COPY run /run-uid
RUN chmod ug+x /run-uid
RUN chmod g=u /etc/passwd
ENTRYPOINT [ "/run-uid" ]
USER 1001
