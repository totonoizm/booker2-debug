Rails.application.routes.draw do
  get 'home/about' => 'homes#about', as: 'about'
  resources :users, only: [:show,:index,:edit,:update]
  resources :books
  devise_for :users
  root 'homes#top'
end