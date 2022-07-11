# myApp

## sidekiq
* add `gem 'sidekiq'`
* `bundle install`
* configure `config.active_job.queue_adapter = :sidekiq` in `config/application.rb`
* add routes
* `bundle exec sidekiq`
* `rails s` and visit localhost:3000
