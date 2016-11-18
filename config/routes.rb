Rails.application.routes.draw do

  resources :admins

  get 'signup' => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  resources :sessions

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  root 'sessions#new'

  resources :posts do
    resources :tags, only: [:create, :destroy]
  end

  resources :tags, only: [:index, :show]

end
