Rails.application.routes.draw do
  resources :stories

  devise_for :users
  resources :users, :only => [:show]
end