Rails.application.routes.draw do
  resources :postspecs
  # devise_for :userspecs
  resources :posts
  devise_for :users
  root "home#index"

  get "/home", to: "home#index"

  get "/admin", to: "admin#index"
  get "/posts", to: "posts#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
