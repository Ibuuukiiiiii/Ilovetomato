Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'alitzs/michiannai' => 'alitzs#michiannai'
  get 'alitzs/kaiwa' => 'alitzs#kaiwa'
  get 'alitzs/komatta' => 'alitzs#komatta'

  resources :alitzs
  root 'alitzs#index'
  delete 'alitzs/:id' => 'alitzs#destroy'

   



end
