FROM tomaszbar/jira-installer-system
ARG JIRA_NAME=atlassian-jira-software-8.0.0-x64.bin
COPY setenv-custom.sh /opt/atlassian/jira/bin/setenv.sh
COPY ojdbc7.jar /opt/atlassian/jira/lib/ojdbc7.jar
#download jira
RUN wget https://product-downloads.atlassian.com/software/jira/downloads/${JIRA_NAME} && chmod +x ${JIRA_NAME} \
#install jira
&& java -jar jira-installer/target/jira-installer-1.0-SNAPSHOT-jar-with-dependencies.jar ./${JIRA_NAME} /jira /jira_home \
#mysql connector
&& wget -P /opt/atlassian/jira/lib https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.47/mysql-connector-java-5.1.47.jar \
&& chmod +x /opt/atlassian/jira/bin/setenv.sh
VOLUME [ "/var/atlassian/application-data/jira" ]
WORKDIR /opt/atlassian/jira/bin
ENTRYPOINT [ "./start-jira.sh", "-fg" ]
EXPOSE 8080
EXPOSE 5006