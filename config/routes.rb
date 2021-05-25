Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  resources :posts, only: [:show, :index]
  resources :tags, only: [:show]
  resources :categories, only: [:show]
  get 'search', to: "posts#search"
  namespace :admin do
    resources :posts, except: [:show, :index]
    resources :categories, except: [:show]
  end

end
