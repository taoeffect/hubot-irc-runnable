#!/usr/bin/env sh

# Set Environment Variables
export HUBOT_IRC_NICK=my_stoopid_bot
export HUBOT_IRC_SERVER=chat.freenode.net
export HUBOT_IRC_ROOMS="#my_stoopid_bots_lair"

# http://stackoverflow.com/a/246128/1781435
DIR=$( cd "$( dirname "$0" )" && pwd )

export IRCLOGS_FOLDER="$DIR/logs"

# Using SSL?
export HUBOT_IRC_PORT=6697
export HUBOT_IRC_USESSL=true
export HUBOT_IRC_SERVER_FAKE_SSL=true

# Server password?
#export HUBOT_IRC_PASSWORD=password
#export HUBOT_IRC_NICKSERV_USERNAME="$HUBOT_IRC_NICK"
#export HUBOT_IRC_NICKSERV_PASSWORD="password"


# change HTTPD port to not interfere with other hubots
# (passing -d in params doesn't seem to work)
# export IRCLOGS_PORT=9914
# export PORT=9915

# Don't let hubot flood the room.
export HUBOT_IRC_UNFLOOD=true

# Output environment variables
echo HUBOT_IRC_NICK=$HUBOT_IRC_NICK
echo HUBOT_IRC_SERVER=$HUBOT_IRC_SERVER
echo HUBOT_IRC_ROOMS=$HUBOT_IRC_ROOMS

echo HUBOT_IRC_PORT=$HUBOT_IRC_PORT
echo HUBOT_IRC_USESSL=$HUBOT_IRC_USESSL
#echo HUBOT_IRC_SERVER_FAKE_SSL=$HUBOT_IRC_SERVER_FAKE_SSL
#echo HUBOT_IRC_PASSWORD=$HUBOT_IRC_PASSWORD

# Start the redis brain
# echo ""
# echo "Starting Redis Server"
# /usr/local/bin/redis-server > /dev/null &

echo ""
echo "Starting bot"
./bin/hubot -a irc