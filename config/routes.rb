Paporeto::Application.routes.draw do
  # Uploadbox  
  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
  
  # Uploadbox
  devise_for :users

  # Admin ------------------------------------------------------------------------
  namespace :admin do
    resources :categories, except: :show
    resources :articles
    resources :users, except: :show

    root 'articles#index'
  end

  # Public ------------------------------------------------------------------------
  resources :articles, only: [:index, :show]

  root 'home#index'
end
