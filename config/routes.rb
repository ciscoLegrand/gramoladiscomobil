Rails.application.routes.draw do
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
