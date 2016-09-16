Rails.application.routes.draw do
  resources :evenings
  devise_for :users, :defaults => { :format => :json }, 
  									 :controllers => { registrations: 'registrations' }  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
