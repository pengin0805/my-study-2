Rails.application.routes.draw do
  get 'contents/indes'
  root to: "contents#index"
end
