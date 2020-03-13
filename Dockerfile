FROM python:3-slim

RUN python -m pip install -U webscrapbook

ADD files/startup.sh /usr/bin/startup.sh
RUN chmod +x /usr/bin/startup.sh
EXPOSE 8080

RUN mkdir /data
WORKDIR /data

ADD files/config.ini.example /

CMD ["/usr/bin/startup.sh"]
