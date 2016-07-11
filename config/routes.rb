Rails.application.routes.draw do 

  get  'services_location' =>'services_location#index'

  root 'home#index'

  resources :services
  resources :profiles
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
