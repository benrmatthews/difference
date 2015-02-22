Rails.application.routes.draw do
  resources :roles

  get 'welcome/index'

  resources :stories

  devise_for :users, :controllers => { :registrations => "users/registrations" } 
  resources :users, :only => [:show]
end