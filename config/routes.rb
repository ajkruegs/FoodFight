Rails.application.routes.draw do
  get '/sign_in', to: 'donate#sign_in'
  get '/index', to: 'donate#index'
  get '/about', to: 'donate#about'
  get '/select_food', to: 'donate#select_food'
  get '/select_friend', to: 'donate#select_friend'
  get '/throw_food', to: 'donate#throw_food'
  get '/confirm_throw', to: 'donate#confirm_throw'
  root 'donate#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
