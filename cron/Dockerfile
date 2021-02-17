FROM ubuntu:18.04
MAINTAINER alicef@gentoo.org

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/hello-cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/hello-cron

#Install Cron
RUN apt-get -y update && apt-get -y install cron

# Run the command on container startup
CMD echo "starting" && echo "continuing" && (cron) \
 && echo "tailing..." && : >> /var/www/static/cron.log.txt && tail -f /var/www/static/cron.log.txt
