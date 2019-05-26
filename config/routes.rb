Rails.application.routes.draw do
  resources :transactions
  get 'pages/user_view'

  devise_for :users
  root to: 'pages#home'

  get 'pages/aboutUs'

  get 'pages/Contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
