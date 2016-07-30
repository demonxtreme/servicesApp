Rails.application.routes.draw do 


  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

  #get 'profile/new' => 'profile#index'

  resources :profile

  #get 'profile/:id' => 'profile#show'

  #post 'profile/:id' => 'profile#create'

  get 'services_location' =>'services_location#index'

  get 'services_list' => 'service_profile#index'


  root 'home#index'

  resources :services



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
