VsWiki::Application.routes.draw do
  resources :posts
  root to: 'dashboard#index'
  resources :users, only: [:new, :create]

  resources :user_sessions, only: [:create, :destroy]

  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
end
