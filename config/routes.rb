Rails.application.routes.draw do 

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }



  get  'services_location' =>'services_location#index'

  root 'home#index'

  resources :services
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
