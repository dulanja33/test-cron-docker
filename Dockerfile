FROM debian
 
RUN apt-get update && apt-get -y install -qq --force-yes cron && apt-get -y install unzip && apt-get -y install default-jre

COPY sample.zip /etc/sample.zip
RUN unzip /etc/sample.zip -d /etc
RUN chmod u+x /etc/printJob/printJob_run.sh

COPY cron-config /etc/cron.d/cron-config
RUN crontab /etc/cron.d/cron-config

CMD ["cron", "-f"]
