openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout server.key -out server.crt -config crt.conf -sha256
