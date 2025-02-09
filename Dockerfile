FROM nginx:stable

RUN apt-get update \
    && apt-get install -y cron bash wget \
    && rm -rf /var/lib/apt/lists/*

CMD ["sh", "-c", "cron && nginx -g 'daemon off;'"]
