Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers, only: [:index, :show] do
    resources :wishlists, only: [:create]

  end
  resources :wishlists, only: [:destroy, :index]

  patch 'avatar', to: 'application#change_avatar'
end
