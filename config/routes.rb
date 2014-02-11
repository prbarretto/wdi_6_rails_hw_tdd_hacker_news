HackerNews::Application.routes.draw do
  devise_for :users

  resources :users do
  	resources :articles do
  		resources :comments
  	end
  end

  root to: 'articles#index'
end
