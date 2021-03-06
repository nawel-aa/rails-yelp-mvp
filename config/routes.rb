Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants, only: %i[new create show] do
    resources :reviews, only: %i[create]
  end
end
