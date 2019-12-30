FROM linuxserver/letsencrypt
#FROM linux-letsencrypt:local
LABEL maintainer="Abel Greenwald"

EXPOSE 80 443

ENV DHLEVEL=2048
ENV URL=abelswork.net
ENV SUBDOMAINS=www,notebook
ENV EXTRA_DOMAINS=abelswork.com,www.abelswork.com,notebook.abelswork.com
ENV ONLY_SUBDOMAINS=false
ENV EMAIL="abel.greenwald@gmail.com"
ENV VALIDATION=dns
ENV DNSPLUGIN=route53
ENV STAGING true

RUN apk add nginx-mod-http-geoip

COPY ./files/GeoLite2-Country.mmdb /config/geoip2db/GeoLite2-Country.mmdb
COPY ./files/http.conf             /config/nginx/conf.d/http.conf
COPY ./files/bad-agent.conf        /config/nginx/conf.d/bad-agent.conf
COPY ./files/bad-referrer.conf     /config/nginx/conf.d/bad-referrer.conf
COPY ./files/nginx.conf            /config/nginx/nginx.conf
COPY ./files/redirect.conf         /config/nginx/site-confs/redirect.conf
COPY ./files/odoo.conf             /config/nginx/site-confs/odoo.conf
COPY ./files/notebook.conf         /config/nginx/site-confs/notebook.conf
COPY ./route53.ini                 /config/dns-conf/route53.ini
