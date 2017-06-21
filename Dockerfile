FROM jockdarock/tiny_go_webserver

WORKDIR /

COPY /EscapeButton ./tiny_go_web

#IOx Labels
LABEL "cisco.cpuarch"="x86_64" \
      "cisco.resources.profile"="c1.large" \
      # "cisco.resources.cpu"="600" \
      # "cisco.resources.memory"="200" \
      "cisco.resources.disk"="10" \
      "cisco.resources.network.0.interface-name"="eth0"

EXPOSE 8282

CMD  ["./tiny_go_web_server"]
