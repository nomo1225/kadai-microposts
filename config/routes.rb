Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  # resourcesで必要なアクション指定
  resources :users, only: [:index, :show, :new, :create]
end
