Rails.application.routes.draw do
  # get 'sessions/new'

  root 'static_pages#home'
  # as:でもルーティングできるがhelf_pathにしないとできない
  # get  '/help', to: 'static_pages#help', as: 'helf'
  get  '/help', to: 'static_pages#help'
  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
