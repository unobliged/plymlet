Plymlet::Application.routes.draw do

  root :to => 'static_pages#home'

  devise_for :users 
  resources :passages do
    post :add_to_vocab_list, :on => :collection 
    post :remove_from_vocab_list, :on => :collection 
  end

  resources :users, :only => [:index, :show]

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  
end
