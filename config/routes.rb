Rails.application.routes.draw do
  devise_for :users
  get 'contents/indes'
  root to: "contents#index"
end
