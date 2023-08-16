require 'sidekiq'
require 'sidekiq/web'

Rails.application.routes.draw do

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  namespace :admin do
    root 'dashboard#index'
    resources :albums do
      patch :publish, on: :member
      post  :search, on: :collection
    end
    resources :categories
    resources :contacts
    resources :images, only: %i[create]
    delete 'images/:album_id/delete-all', to: 'images#delete_all', as: :delete_all
    resources :products
  end

  resources :contacts, only: %i[create]
  match '/contact', to: 'contacts#new', via: %i[get], as: :public_contact

  resources :categories do
    resources :products, only: %i[index show]
  end

  root 'pages#index'
  resources :albums do
    get :verify_password, on: :member
    post :verify_password, on: :member
    collection do
      post :index
    end
  end

  devise_scope :user do
    get ':role/profile', to: 'devise/registrations#edit', as: :profile
  end

  devise_for :users,
              path: 'users', 
              path_names: {
                sign_in: 'login',
                sign_out: 'logout',
                password: 'secret',
                confirmation: 'verification',
                unlock: 'unblock',
                registration: 'register',
                sign_up: 'sign_up'
              },
              controllers: { 
                registrations: 'users/registrations',
                sessions: 'users/sessions',
                confirmations: 'users/confirmations',
                passwords: 'users/passwords',
                omnuauth_callbacks: 'users/omniauth_callbacks',
                unlocks: 'users/unlocks'
              }
end
