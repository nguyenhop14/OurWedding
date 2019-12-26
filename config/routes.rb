Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  root to: "static_pages#index"
  get "/about", to: "static_pages#about"
  resources :users
end
