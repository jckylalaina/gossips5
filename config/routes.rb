Rails.application.routes.draw do
resources :gossips do
  resources :comments
end	
  root 'home#index'
  get 'home/team' , to: 'home#team'
  get 'home/contact' 
  get '/Gossip_:id' , to: 'home#Gossip_view'
   get '/:id' , to: 'home#url' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
