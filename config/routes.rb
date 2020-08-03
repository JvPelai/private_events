Rails.application.routes.draw do
  root 'events#index'
  resources :events
  resources :users, except: [:destroy]
  resources :sessions, only: [:new, :create, :destroy]
  get 'sessions/new'
  get 'sign_in' => 'sessions#new'
  post 'sign_in'  => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
end
