Rails3MongoidDevise::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
  end

  resources :courses

  resources :categories

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end