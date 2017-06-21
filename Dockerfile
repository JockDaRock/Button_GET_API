FROM jockdarock/tiny_go_webserver

WORKDIR /

COPY /EscapeButton ./tiny_go_web

#IOx Labels
LABEL "cisco.cpuarch"="x86_64" \
      "cisco.resources.profile"="custom" \
      "cisco.resources.cpu"="50" \
      "cisco.resources.memory"="50" \
      "cisco.resources.disk"="10" \
      "cisco.resources.network.0.interface-name"="eth0"

EXPOSE 8282

CMD  ["./tiny_go_web_server"]
