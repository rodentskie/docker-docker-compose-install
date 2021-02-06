FROM postgres:9.6
COPY . /usr/src/db
WORKDIR /usr/src/db
ENV POSTGRES_PASSWORD="p@ssw0rd"
ENV POSTGRES_USER="rodney"
ENV PGDATA="/var/lib/postgresql/data/pgdata"
COPY . .
EXPOSE 5432