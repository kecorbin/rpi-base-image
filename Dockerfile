FROM hypriot/rpi-python
MAINTAINER Kevin Corbin, kecorbin@cisco.com
RUN apt-get update && \
    apt-get install -y python git python-pip gcc nmap
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
ADD . /tmp
WORKDIR /tmp
RUN pip install -r requirements.txt
