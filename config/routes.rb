Rails.application.routes.draw do
  devise_for :users
  namespace :console do
  	root to: 'dashboard#index'
    resources :dashboard
    resources :profiles
    resources :roles
    resources :projects
    resources :advances
    resources :tasks
    resources :requirements
  end
end
