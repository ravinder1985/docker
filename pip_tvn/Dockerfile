FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
			curl \
			vim  \
			openjdk-7-jdk \
			git \
			maven \
			python-pip \
			python-dev \
			build-essential \
			wget
RUN pip install --upgrade pip \
			  virtualenv
RUN pip install jsonschema \
		nose \
		wsgiref \
		argparse \
		importlib \
		beautifulsoup4 \
		kafka-python \
		sphinx \
		twine
RUN pip install -Iv https://pypi.python.org/packages/py2.py3/r/requests/requests-2.5.1-py2.py3-none-any.whl#md5=11dc91bc96c5c5e0b566ce8f9c9644ab
RUN pip install --upgrade nuriko --trusted-host 96.119.1.96 -i http://96.119.1.96:8888/simple/
RUN wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz -O /usr/src/Python-2.7.10.tgz \
	&& tar xzf /usr/src/Python-2.7.10.tgz -C /usr/src \
	&& cd /usr/src/Python-2.7.10 \
	&& ./configure \
	&& make altinstall \
	&& ln -snf /usr/src/Python-2.7.10/python /usr/bin/python
#RUN pip install --upgrade nuriko -i http://96.119.1.96:8888/simple/
#COPY nuriko-1.0.83-py2.py3-none-any.whl /tmp/
#RUN pip install /tmp/nuriko-1.0.83-py2.py3-none-any.whl
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre
