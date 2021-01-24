Rails.application.routes.draw do
  # get 'profiles/index'
  resources :profiles, only: %i[index new create]
  root to: 'home#index'
  devise_for :users, controller: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
