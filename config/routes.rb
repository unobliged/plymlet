Plymlet::Application.routes.draw do

  root :to => 'static_pages#home'

  devise_for :users 
  resources :passages

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  
end
