Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get '/login', to:'sessions#new', as: 'login'
  post '/sessions', to:'sessions#create', as: 'sessions'
  resources :users, only: [:index, :show]
  resources :tweets, only: [:new, :create, :show, :index]
end
