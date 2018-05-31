FROM debian:latest
RUN apt-get update
RUN apt-get install -y bash rsync vim screen tmux
COPY run /run-uid
RUN chmod ug+x /run-uid
RUN chmod g=u /etc/passwd
ENTRYPOINT [ "/run-uid" ]
USER 1001
