Site::Application.routes.draw do

  resources :images
  resources :ideas
  resources :me, only: :index
  resources :debug, only: :index
  devise_for :users

  root to: "ideas#index"

end
