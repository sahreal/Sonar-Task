Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :posts 
  root to: "posts#index", as: "home"
end
