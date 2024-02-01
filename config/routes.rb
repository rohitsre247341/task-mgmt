Rails.application.routes.draw do
  root 'users#log_in'
  get '/registration', to: 'users#registration'
  post '/sign_in', to: 'users#sign_in'
  get 'user_success', to: 'users#sucess'
  resources :users
end