FROM debian
 
RUN apt-get update && apt-get -y install -qq --force-yes cron

COPY sample.zip /etc/sample.zip
RUN unzip /etc/sample.zip
RUN chmod u+x /etc/printJob/printJob_run.sh

COPY cron-config /etc/cron.d/cron-config
RUN crontab /etc/cron.d/cron-config

CMD ["cron", "-f"]
