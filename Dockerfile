FROM nginx:stable

# ARG CERTBOT_EMAIL=anxhelo_shperdheja@hotmail.com
# ARG DOMAIN_LIST

RUN apt-get update \
    && apt-get install -y cron bash wget \
    # && apt-get install -y certbot python3-certbot-nginx \   # Certbot is commented out
    # && certbot certonly --standalone --agree-tos -m "${CERTBOT_EMAIL}" -n $(echo "${DOMAIN_LIST}" | sed "s/,/ -d /g" | awk '{print "-d " $0}') \
    && rm -rf /var/lib/apt/lists/* \
    # && echo "PATH=$PATH" > /etc/cron.d/certbot-renew  \
    # && echo "@monthly certbot renew --nginx >> /var/log/cron.log 2>&1" >> /etc/cron.d/certbot-renew \
    # && crontab /etc/cron.d/certbot-renew

# VOLUME /etc/letsencrypt

CMD ["sh", "-c", "cron && nginx -g 'daemon off;'"]
