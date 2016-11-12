everywordbot-docker
===================

Docker container that when run tweets an 'everyword' tweet. Based off [aparrish/everywordbot](https://github.com/aparrish/everywordbot/).

### Using
Mount the /data volume with a folder containing your 'words.txt' (containing a list of words to be tweeted) and 'index.txt' (to track how far through the wordlist the bot is).

Set the following environment variables for your Twitter credentials:
(see [aparrish's guide](https://github.com/aparrish/everywordbot) for obtaining Twitter credentials.

    CONSUMER_KEY
    CONSUMER_SECRET
    ACCESS_TOKEN
    TOKEN_SECRET

and set at least one of:

    PREFIX
    SUFFIX

Running the container should tweet, then exit. To schedule tweets, use a Docker container cron to start the container periodically.
