FROM jockdarock/tiny_go_webserver

WORKDIR /

COPY /EscapeButton ./tiny_go_web

EXPOSE 8282

CMD  ["./tiny_go_web_server"]
