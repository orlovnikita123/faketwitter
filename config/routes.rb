Rails.application.routes.draw do
  
  match '/', to: 'static_pages#home', via: 'get'
  match '/help',to: 'static_pages#help', via: 'get'
  match '/about',to: 'static_pages#about', via: 'get'

  resources :users
  resources :microposts
  
  root to: 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
