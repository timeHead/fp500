Rails.application.routes.draw do

  root 'static_pages#home'

  get '/about' => 'static_pages#about'
  get '/u' => 'static_pages#u'
  get '/blm' => 'static_pages#BLM'
  get '/BLM' => 'static_pages#BLM'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  get '/313tree' => 'static_pages#313tree'
  get '/313Tree' => 'static_pages#313tree'
  get '/treeteam' => 'static_pages#treeteam'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  delete 'destroy_account' => 'users#destroy'
  
  resources :users
  resources :things
  resources :trees

end
