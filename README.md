##market place api

## installation 

### requirements

- ruby 2.1.1 (I used rbenv)


##  Installing


That’s it! Your app will be up and running at http://myapp.dev/

in the command line :

- bundle install

- rake db:migrate

- rake db:seed

start the server 

- rails s -p 8080 -b 0.0.0.0

replace -p with your port and -b with an ip address (or omit -b and its argument)

##end points


localhost:8080/admin/

email: admin@example.com 
password: password

use **curl** to test endpoints

create a user in rails console
User.create({email: "max@marketplace.com",
                          password: "12345678",
                          password_confirmation: "12345678"})


sign in to get a authentication token

curl -H "Content-Type: application/json" -X POST -d '{"email":"max@marketplace.com","password":"12345678"}' http://localhost:8080/sessions





