FROM debian:latest
RUN apt-get update
RUN apt-get install -y bash rsync vim screen tmux
COPY run /run
RUN chmod ug+x /run
RUN chmod g=u /etc/passwd
ENTRYPOINT [ "/run" ]
USER 1001
