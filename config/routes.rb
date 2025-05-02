Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
  }

  namespace :admins do
    root 'meal_sets#index'
    resources :meal_sets, only: %i[index new create edit update destroy]
  end
end
