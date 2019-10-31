Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application_controller#home'

  root 'static_page#home'

  resources :gossip, except: [:show]
  
  resources :comment
  resources :user

  resources :session, only: [:new, :create, :destroy]

  get '/contact', to: 'static_page#contact'
  get '/home', to: 'static_page#home'
  get '/team', to: 'static_page#team'
  get '/city/:city', to: 'static_page#city'
  get '/tag/:tag', to: 'static_page#tag'
  get '/welcome/:first_name', to: 'static_page#welcome'
  get '/gossip/:id', to: 'static_page#gossip'
  post '/comment/:id', to: 'static_page#create'
  get '/user/:user_id', to: 'static_page#user_id'

end
