Rails.application.routes.draw do
resources :gossips
  root 'gossips#index'
  get 'home/team' , to: 'home#team'
  get 'home/contact' 
  get '/:id' , to: 'home#url' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
