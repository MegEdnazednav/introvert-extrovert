Rails.application.routes.draw do
  root "users#new"

  resources :users, only: [:new, :create]
  resources :questions, only: [:show]
  resources :user_answers, only: [:create, :index]
end
