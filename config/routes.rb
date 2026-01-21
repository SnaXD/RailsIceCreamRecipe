Rails.application.routes.draw do
  get "users/new"
  get "users/create"
  resource :session
  resources :passwords, param: :token
  resources :users, only: [:new, :create]
  resources :recipes do
    resource :favorite, only: [:create, :destroy]
    member do
      delete :delete_image
    end
  end

  resources :favorites, only: [:index]


  get "static_pages/about"
  resources :recipes, only: [:index, :show, :new, :create ]

  get "about", to: "static_pages#about"
  root 'recipes#index'
end
