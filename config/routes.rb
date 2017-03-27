Rails.application.routes.draw do




    
   resources :topics do
     resources :sponsored_posts
     resources :posts, except: [:index]
   end
   
   resources :users, only: [:new, :create, :show]
   resources :sessions, only: [:new, :create, :destroy]
   
    resources :posts, only: [] do
        post '/up-vote' => 'votes#up_vote', as: :up_vote
        post '/down-vote' => 'votes#down_vote', as: :down_vote
        resources :comments, only: [:create, :destroy]
        resources :favorites, only: [:create, :destroy]
    end
   
    get 'about' => 'welcome#about'

    root 'welcome#index'
   
end
