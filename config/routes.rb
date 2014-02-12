HackerNews::Application.routes.draw do
  devise_for :users

  resources :articles do
 		get 'up_vote' => 'votes#up_vote', as: 'up_vote', defaults: { votable: 'article' }
 		get 'down_vote' => 'votes#down_vote', as: 'down_vote', defaults: {votable: 'article'}
 	  resources :comments do
 	  	get 'up_vote' => 'votes#up_vote', as: 'up_vote', defaults: {votable: 'comment'}
 	  	get 'down_vote' => 'votes#down_vote',as: 'down_vote', defaults: {votable: 'comment'}
 	  end
 	end

  root to: 'articles#index'
end
