FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm ruby gawk
RUN gem install --no-user-install spaarti prospectus
ADD spaarti.yml /root/.spaarti.yml
ADD run /service/prospector/run
