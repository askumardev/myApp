# myApp

## sidekiq
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