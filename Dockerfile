FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby gawk base-devel
RUN gem install --no-user-install --no-document spaarti prospectus parallel netrc nokogiri keylime linodeapi
ADD spaarti.yml /root/.spaarti.yml
ADD run /service/prospector/run
