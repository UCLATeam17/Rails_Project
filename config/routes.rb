Rails3MongoidDevise::Application.routes.draw do

  resources :courses

  resources :categories

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end