FROM extvos/python
MAINTAINER Mingcai SHEN <archsh@gmail.com>

VOLUME /etc/supervisor.d

RUN apk update && apk add supervisor


CMD ["supervisord", "-n"]