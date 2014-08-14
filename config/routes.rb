Rails.application.routes.draw do
  get 'houses/index'

  get 'houses/show'

  get 'houses/new'

  get 'houses/edit'

 root "houses#index"
 resources :houses
end
