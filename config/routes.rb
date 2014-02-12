HackerNews::Application.routes.draw do
  devise_for :users

  resources :users

  resources :articles do
  	resources :votes, defaults: {votable: 'article'}
  	resources :comments do
  		resources :votes, defaults: {votable: 'comment'}
  	end
  end


  root to: 'articles#index'
end
