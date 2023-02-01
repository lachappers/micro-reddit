Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :likes, only: [:create, :destroy]

  get '/register', to: 'users#new'
  resources :users, only: [:create]

  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  resource :sessions, only: [:create]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "posts#index"
  # resources :posts do
    # end
end
