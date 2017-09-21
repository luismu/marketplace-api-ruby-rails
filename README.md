#market place api

author mparaiso <mparaiso@online.fr>

license Apache

[![Build Status](https://travis-ci.org/mediactiv/marketplace-api-ruby-rails.svg?branch=5-Authenticating-users)](https://travis-ci.org/mediactiv/marketplace-api-ruby-rails)

market place is an exemple of a REST api implemented with Rails based on the following book : http://apionrails.icalialabs.com

## installation 

### requirements

- ruby 2.1.1

- git

### usage

- clone the repository then **cd** to the repository folder

in the command line :

- rake db:migrate

start the server 

- rails s -p 8080 -b 0.0.0.0

replace -p with your port and -b with an ip address (or omit -b and its argument)

####end points

use **curl** to test endpoints

create a user

curl -X POST http://localhost:port/users -H "Content-Type: application/json" -d'{"user"{"email":"foo@example.com","password":"password","password_confirmation":"password"}}

sign in to get a authentication token

curl -X POST http://localhost:port/sessions -H "Content-Type: application/json" -d'{"session"{"email":"foo@example.com","password":"password"}}





