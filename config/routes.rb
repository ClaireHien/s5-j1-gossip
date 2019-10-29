Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application_controller#home'

  root 'static_page#home'

  resources :gossip, except: [:show] 

  get '/contact', to: 'static_page#contact'
  get '/home', to: 'static_page#home'
  get '/team', to: 'static_page#team'
  get '/welcome/:first_name', to: 'static_page#welcome'
  get '/gossip/:id', to: 'static_page#gossip'
  get '/user/:user_id', to: 'static_page#user_id'


end
