# 秘密鍵(cert.key)と証明書(cert.crt)を同時に生成（有効期限365日）
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout cert.key \
-out cert.crt \
-subj "/C=JP/ST=Tokyo/L=Chiyoda/O=Development/CN=localhost"