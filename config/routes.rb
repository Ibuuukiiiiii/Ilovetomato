Rails.application.routes.draw do
  get 'alitzs/michiannai' => 'alitzs#michiannai'
  get 'alitzs/kaiwa' => 'alitzs#kaiwa'
  get 'alitzs/komatta' => 'alitzs#komatta'
  get 'alitzs/ichiran' => 'alitzs#ichiran'
  get 'alitzs/about' => 'alitzs#about'
  delete 'alitzs/:id' => 'alitzs#destroy'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :alitzs
  root 'alitzs#index'



end