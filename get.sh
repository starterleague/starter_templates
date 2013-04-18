#!/bin/sh

curl -s https://raw.github.com/starterleague/starter_templates/master/.railsrc -o ~/.railsrc

git clone git://github.com/starterleague/beacon_client.git
cd beacon_client
bundle install
rake build
rake install
cd
rm -rf beacon_client
