#!/bin/sh

curl -s https://raw.github.com/starterleague/starter_templates/master/.railsrc -o ~/.railsrc

git clone git://github.com/starterleague/beacon_client.git /tmp/beacon_client
cd /tmp/beacon_client
bundle install
rake build
rake install
cd
rm -rf /tmp/beacon_client