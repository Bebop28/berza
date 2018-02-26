Rails.application.routes.draw do
  get 'user_stocks/create'

  get 'stocks/search'

  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_path', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]
end