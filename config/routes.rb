Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#index"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  resources :users do
    resources :ideas
  end

  namespace :admin do
    resources :categories
    resources :images
  end
end
