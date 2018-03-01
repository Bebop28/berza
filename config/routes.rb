Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :frienships

  
  get 'user_stocks/create'
  get 'stocks/search'
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_path', to: 'stocks#search'
  get 'my_friends', to: "users#my_friends"
  get 'search_friends', to: "users#search"
end