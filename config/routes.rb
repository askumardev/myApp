require 'sidekiq/web'
Rails.application.routes.draw do  
  get 'todo_lists/index'
  get 'todo_lists/create'
  get 'todo_lists/update'
  get 'todo_lists/destroy'
  get 'scraper/index'
  
  mount Sidekiq::Web => '/sidekiq'
  get 'other/job_done'
  get "welcome/index"
  #root to: "home#index"  
  root to: "welcome#index"
  # get 'home/index'
  #get 'workshop/index'
  resources :users, only: :index
  resources :articles 
  resources :workshop, only: %i[index show]
  resources :bookings, only: %i[create] do
    get :booking_details, on: :member
  end
  scope '/api/v1' do
    resources :todo_lists
  end

  # route where any visitor require the helloWorldJob to be triggered
  post "welcome/trigger_job"

  # where visitor are redirected once job has been called
  get "other/job_done"
end
  
