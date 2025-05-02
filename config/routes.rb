Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }

  root 'users/home#index'

  namespace :admins do
    root 'meal_sets#index'
    resources :meal_sets, only: %i[index new create edit update destroy]
  end

  namespace :users do
    root 'home#index'
    resources :users, only: %i[show]
  end
end
