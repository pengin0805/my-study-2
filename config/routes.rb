Rails.application.routes.draw do
  devise_for :users
  root to: "contents#index"
  resources :contents do
    member do
      patch :study
    end
  end
end
