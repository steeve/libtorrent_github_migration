FROM debian:wheezy
MAINTAINER Steeve Morin "steeve.morin@gmail.com"

RUN apt-get update && apt-get install -y git-core git-svn ruby rubygems
RUN gem install svn2git
ENV LIBTORRENT_SVN http://libtorrent.googlecode.com/svn/
ENV LIBTORRENT_PATH /libtorrent
VOLUME ["/libtorrent"]

ADD rebase_libtorrent.sh /
ADD authors.txt /
WORKDIR /libtorrent
CMD ["/rebase_libtorrent.sh"]
