# myApp
if you are running the app in windows machine using wsl
sudo apt install wsl

Enable WSL Integration in Docker Desktop
Open Docker Desktop (via Start menu or tray icon).

Go to Settings → Resources → WSL Integration.

Enable:

✅ “Enable integration with my default WSL distro”

✅ And/or specifically check Ubuntu-24.04

Click Apply & Restart

create a .env file and add the below env variable
INSIDE_DOCKER=true
### docker cmds
#### if any changes made
* `docker-compose down`
* `docker-compose build`
* `docker-compose up -d`
* `docker-compose run web rails db:drop db:create db:migrate db:seed`

* docker-compose run web rails db:seed
* docker-compose run web rails db:reset
* docker-compose run web bundle exec rspec


#To run server
* `docker-compose up`
* to debug while the rails server is running
* `docker ps`
* `docker attach myapp-web-1` (provide the name)
* docker images
* `docker-compose exec web rails console`

### Generators
* rails generate model Student
* rails db:migrate
* rails generate controller Student
* rails g migration add_passing_year_in_student_degrees
* rails g serializer TodoList
* http://localhost:3000/api/v1/samples

### Imp cmds
* sudo rm -rf tmp

### sidekiq
* add `gem 'sidekiq'`
* `bundle install`
* configure `config.active_job.queue_adapter = :sidekiq` in `config/application.rb`
* add routes
* `bundle exec sidekiq`
* `rails s` and visit localhost:3000

* `customer = Stripe::Customer.create({name:'abc', email:'abc@example.com', phone:'1234567892'})`
* `token = Stripe::Token.create({card: {number:'4242424242424242',exp_month:7, exp_year:2023, cvc:'314'},})`
* `card = Stripe::Customer.create_source(customer.id,{source: token.id})`

* rails g mailer bookings booking_confirmation

### Active storage
* `rails active_storage:install`

### FunApi
### copy url http://localhost:3000/users
### search 'Philip J Fry' in the text filed
* Image with response is place in `app/assets/images/funapi.png`

* `require 'hirb'`
* `Hirb.enable({:width => 155, :height => 500})`

* sudo docker build -t myapp .
* sudo docker-compose up
* tp TodoList.all(To show tables in table format in rails comsole)

### Rspec
* gem "rspec" && bundle install
* bundle exec rspec || bundle exec rspec --format documentation