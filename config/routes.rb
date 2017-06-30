Rails.application.routes.draw do
root :to => 'products#index'

  resources :products do
    post 'sorted'
    resources :reviews, :except => [:show, :index]
  end
end
