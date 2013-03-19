neo_gas
==========

Gas Exports dataset into a Neo4j graph database

Installation
----------------

    git clone git@github.com:maxdemarzi/neo_gas.git
    bundle install
    rake neo4j:install
    rake neo4j:start
    rackup

On Heroku
---------

    git clone git@github.com:maxdemarzi/neo_gas.git
    heroku apps:create neogas
    heroku addons:add neo4j
    git push heroku master

See it running live at http://neogas.heroku.com

![Screenshot](https://raw.github.com/maxdemarzi/neo_gas/master/screenshot.png)