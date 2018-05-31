FROM debian:latest

RUN apt-get update
RUN apt-get install -y bash rsync openssh vim

USER 1001
EXPOSE 80
ENTRYPOINT [ "/srv/bin/run" ]
