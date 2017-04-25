Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'login', to: 'session#destroy'
  
  get 'singup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  
  
  resources :tasks
  
end
