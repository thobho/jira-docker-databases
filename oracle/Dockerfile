FROM oracle/database:12.1.0.2-ee
COPY init.sql /opt/oracle/scripts/setup/init.sql
ENV ORACLE_SID=jirasid
ENV ORACLE_PDB=jirapdb
ENV ORACLE_PWD=password
VOLUME [ "/opt/oracle/oradata" ]
