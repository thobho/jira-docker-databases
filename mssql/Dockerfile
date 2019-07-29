FROM mcr.microsoft.com/mssql/server
COPY ./create-db.sql /opt/mssql-tools/bin/create-db.sql
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=password1!
WORKDIR /opt/mssql-tools/bin
# ENTRYPOINT [ "./sqlcmd", "-U SA -P password1! -i create-db.sql" ]