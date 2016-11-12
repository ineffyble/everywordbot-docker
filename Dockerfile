FROM python:3.5
MAINTAINER Effy Elden <dev@effy.is>
RUN pip install tweepy
RUN git clone https://github.com/aparrish/everywordbot.git /app
CMD python /app/everywordbot.py --consumer_key="$CONSUMER_KEY" --consumer_secret="$CONSUMER_SECRET" --access_token="$ACCESS_TOKEN" --token_secret="$TOKEN_SECRET" --source_file="/data/words.txt" --index_file="/data/index.txt" --prefix="$PREFIX" --suffix="$SUFFIX"
VOLUME /data