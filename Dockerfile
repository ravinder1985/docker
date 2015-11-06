FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
			curl \
			vim  \
			openjdk-7-jdk \
			git
RUN git clone https://git-wip-us.apache.org/repos/asf/mesos.git
COPY first.sh /tmp/first.sh
CMD /tmp/first.sh
