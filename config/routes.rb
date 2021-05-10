Rails.application.routes.draw do
  devise_for :users
  root to: "contents#index"
  resources :contents do
      member do
        patch :study
      end
  end
  resources :contents do
    resources :comments, only: [:index, :create]
  end

  end
