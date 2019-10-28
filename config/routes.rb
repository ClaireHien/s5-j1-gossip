Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application_controller#home'

  root 'static_page#home'

  get '/contact', to: 'static_page#contact'
  get '/team', to: 'static_page#team'
  get '/welcome/:first_name', to: 'static_page#welcome'
  #get '/gossip/:id' to 'static_page#gossip'

end
