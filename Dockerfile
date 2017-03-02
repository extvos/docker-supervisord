FROM extvos/python
MAINTAINER Mingcai SHEN <archsh@gmail.com>

VOLUME /etc/supervisor.d

RUN apk update && apk add  --no-cache supervisor && /usr/bin/echo_supervisord_conf > /etc/supervisord.conf \
    && echo "[include]" >> /etc/supervisord.conf && echo "files = /etc/supervisor.d/*.ini" >> /etc/supervisord.conf

VOLUME /etc/supervisor.d/

CMD ["supervisord", "-n"]