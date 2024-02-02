Rails.application.routes.draw do
  root 'users#log_in'
  get '/registration', to: 'users#registration'
  post '/sign_in', to: 'users#sign_in'
  get 'user_success', to: 'users#sucess'
  delete '/log_out', to: 'users#log_out'
  resources :users
  resources :users do
    resources :tasks
  end
  resources :tasks
end