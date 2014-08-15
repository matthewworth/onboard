Rails.application.routes.draw do
root "houses#index"	
 
 resources :houses do
 	resources :orders, only: [:new, :create]
 end

 resources :users do
 	resources :houses, only: [:show, :index]
 	resources :orders, only: [:show]
 end
 
 resource :session, only: [:new, :create, :destroy]
 resources :orders	

end
