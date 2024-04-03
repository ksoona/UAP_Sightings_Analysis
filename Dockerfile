FROM postgis/postgis
RUN apt-get update && apt-get install -y curl
RUN curl -L -O https://web.archive.org/web/20230824194810/https://updb.app/phenomenon.sql.gz
COPY dump.sh dump.sh
RUN gunzip phenomenon.sql.gz
