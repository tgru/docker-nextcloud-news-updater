FROM python:3-alpine
MAINTAINER tgru (21686590+tgru@users.noreply.github.com)

RUN pip3 install nextcloud_news_updater --install-option="--install-scripts=/usr/bin"
RUN echo "[updater]">/bin/config.ini

ENTRYPOINT ["nextcloud-news-updater", "-c", "/bin/config.ini"]