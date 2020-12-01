FROM python:3-alpine
MAINTAINER tgru (21686590+tgru@users.noreply.github.com)

RUN pip install nextcloud_news_updater
RUN echo "[updater]">/bin/config.ini

ENTRYPOINT ["nextcloud-news-updater", "-c", "/bin/config.ini"]