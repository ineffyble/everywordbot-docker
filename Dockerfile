FROM python:3.5
MAINTAINER Effy Elden <dev@effy.is>

RUN pip install tweepy

RUN git clone https://github.com/aparrish/everywordbot.git /app

ADD tweet.sh /app/tweet.sh
RUN chmod +x /app/tweet.sh

ENTRYPOINT ["/app/tweet.sh"]
CMD [""]

VOLUME /data
