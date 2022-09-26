Rails.application.routes.draw do
  
    devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

    devise_scope :user do
      # Redirests signing out users back to sign-in
      get "users", to: "devise/sessions#new"
    end

  # devise_for :users

  # get 'register/index'
  # get 'register/show'
  # get 'register/new'
  # get 'register/create'
  # get 'register/edit'
  # get 'register/update'
  # get 'register/delete'
  # get 'users/sign_out'

  # resources :register 
  resources :register do
    member do
      get :delete
    end
  end

 resources :posts do
    member do
      get :delete
    end
  end


  # resources :register
  # get 'register/new', to: 'register#new', as: 'new_register'
  # post 'register', to: 'register#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "register#index"
  root "posts#index"
end


  # get 'register', to: 'register#index', as: 'register'
  # get 'register/new', to: 'register#new', as: 'new_register'
  # get 'register/:id', to: 'register#show', as: 'register'
  # post 'register', to: 'register#create'
  # get 'register/:id/edit', to: 'register#edit', as: 'edit_register'
  # patch 'register/:id', to: 'register#update'
  # delete 'register/:id', to: 'register#destroy', as: 'delete_register'
  # root 'register#index'