Rails.application.routes.draw do
  root 'universities#index'

  resources :universities, only: %i[show index]
end
