FROM centos/httpd-24-centos7

RUN sed -ie 's/^#SSLCertificate/SSLCertificate/g' /etc/httpd/conf.d/ssl.conf

COPY certs/localhost.crt /etc/pki/tls/certs/localhost.crt
COPY certs/localhost.key /etc/pki/tls/private/localhost.key
COPY certs/server-chain.crt /etc/pki/tls/certs/server-chain.crt


