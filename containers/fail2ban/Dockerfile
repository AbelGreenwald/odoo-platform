#FROM linuxserver/letsencrypt
FROM linux-letsencrypt:local
LABEL maintainer="Abel Greenwald"

EXPOSE 80 443

ENV DHLEVEL=256
ENV URL=abelswork.net
#ENV SUBDOMAINS=www,notebook
#ENV EXTRA_DOMAINS=abelswork.com,www.abelswork.com,notebook.abelswork.com,www.notebook.abelswork.com
ENV ONLY_SUBDOMAINS=false
ENV EMAIL="abel.greenwald@gmail.com"
ENV VALIDATION=dns
ENV DNSPLUGIN=route53
ENV STAGING true

COPY ./route53.ini /config/dns-conf/route53.ini
COPY ./odoo.conf /config/nginx/site-confs/odoo.conf
