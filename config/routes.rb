Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
  }

  namespace :admins do
    root 'home#index'
  end
end
