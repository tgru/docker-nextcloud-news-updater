# Nextcloud News Updater for Docker

An docker image containing the Nextcloud News Updater for easy deployment.

## Usage

The image currently only supports updating the news feeds through the REST API, so it is mandatory that a configuration file will be mounted to `/bin/config.ini`. An example with the minimal configuration is written below:

```ini
[updater]
url = https://url.to.nextcloud.tld
user = admin_user_name
password = admin_user_password
```

More options can be found at the [news-updater](https://github.com/nextcloud/news-updater#Usage) repository. **Do not forget to set proper file permissions (e.g. 600) and owner, since this file contains sensible information**.

After creation just start the updater with the docker command:

```bash
docker run -v /path/to/config:/bin/config.ini tgru/nextcloud-news-updater
```

Or alternatively use docker-compose by using the [provided](docker-compose.yaml) or an own `docker-compose.yaml` file and calling

    docker-compose up -d