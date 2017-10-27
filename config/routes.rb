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
    resources :timesheets
    resources :absents
    resources :overtimes
    resources :dailyreports
  end
end
