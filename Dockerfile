FROM tombull/confd:alpine

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates

# Needed to start associated mopper container
RUN apk add --update docker

VOLUME ["/etc/conf.d/mopper"]

# env defaults
ENV CONFD_INTERVAL 1800
ENV CONFD_LOG_LEVEL debug
ENV CONFD_BACKEND rancher
ENV CONFD_PREFIX /2015-07-25
ENV MOPPER_DEBUG 0
ENV MOPPER_KEEP_VOLUMES_NAMED '**All**'

ADD ./run_confd.sh /run_confd.sh
RUN chmod +x /run_confd.sh

CMD ["/run_confd.sh"]
