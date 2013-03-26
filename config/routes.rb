Rails3MongoidDevise::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

<<<<<<< HEAD
  resources :messages

  match '/faq' => "static#faq.html.erb"

=======
>>>>>>> d46909a2b1a8f76277a616aa2db1d77658d737b0
  resources :courses do
    get :booking, :on => :member
  end 

  resources :categories

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end