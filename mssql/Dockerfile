FROM mcr.microsoft.com/mssql/server
COPY ./create-db.sql /opt/mssql-tools/bin/create-db.sql
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=password1!
WORKDIR /opt/mssql-tools/bin