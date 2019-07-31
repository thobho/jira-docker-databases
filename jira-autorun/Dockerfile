FROM ubuntu
ARG JIRA_NAME=atlassian-jira-software-8.3.0-x64.bin
#prepare environment
RUN apt-get update && apt-get install wget -y && apt install default-jre -y && apt install git -y && apt install maven -y \
#download jira
&& wget https://product-downloads.atlassian.com/software/jira/downloads/${JIRA_NAME} && chmod +x ${JIRA_NAME} \
#download jira-installer
&& git clone https://github.com/thobho/jira-installer && mvn -f jira-installer/pom.xml clean install \
#install jira
&& java -jar jira-installer/target/jira-installer-1.0-SNAPSHOT-jar-with-dependencies.jar ./${JIRA_NAME} /jira /jira_home \
#mysql connector
&& wget -P /opt/atlassian/jira/lib https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.47/mysql-connector-java-5.1.47.jar
VOLUME [ "/jira_home" ]
WORKDIR /opt/atlassian/jira/bin
ENTRYPOINT [ "./start-jira.sh", "-fg" ]
EXPOSE 8080