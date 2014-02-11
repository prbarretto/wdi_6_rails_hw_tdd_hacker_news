HackerNews::Application.routes.draw do
  devise_for :users

  resources :users do
  	resources :articles
  end

  root to: 'articles#index'
end
