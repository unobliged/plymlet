Plymlet::Application.routes.draw do
  devise_for :users

  resources :passages

  root :to => "home#index"


end
