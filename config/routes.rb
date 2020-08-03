Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  root 'users#index'
  get 'sign_in' => 'sessions#new'
  post 'sign_in'  => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
end
