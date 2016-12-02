FROM tombull/confd:alpine

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates

ADD ./conf_exec.sh /conf_exec.sh
RUN chmod +x /conf_exec.sh

VOLUME ["/mopper/rancher/inventory"]

ENTRYPOINT ["/conf_exec.sh"]
