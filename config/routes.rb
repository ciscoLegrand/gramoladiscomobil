Rails.application.routes.draw do
  resources :contacts, only: %i[index show create delete]
  match '/contact', to: 'contacts#new', via: %i[get], as: :public_contact

  resources :products
  resources :categories do
    resources :products, only: %i[index show]
  end
  root 'pages#index'
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
