FROM ubuntu
RUN apt-get update && apt-get install wget -y && apt install default-jre -y && apt install git -y && apt install maven -y \
#download jira-installer
&& git clone https://github.com/thobho/jira-installer && mvn -f jira-installer/pom.xml clean install
EXPOSE 5005