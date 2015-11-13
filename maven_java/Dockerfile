FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
			curl \
			vim  \
			openjdk-7-jdk \
			git \
			maven
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre
COPY maven_settings/m2.conf /usr/share/maven/conf/m2.conf
COPY maven_settings/settings.xml /usr/share/maven/conf/settings.xml
#COPY first.sh /tmp/first.sh
#CMD /tmp/first.sh
