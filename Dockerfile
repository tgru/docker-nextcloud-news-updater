FROM alpine:latest
MAINTAINER tgru (21686590+tgru@users.noreply.github.com)

RUN apk add python3
RUN pip3 install nextcloud_news_updater --install-option="--install-scripts=/usr/bin"
RUN echo "[updater]">/bin/config.ini

ENTRYPOINT ["nextcloud-news-updater", "-c", "/bin/config.ini"]