Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  resources :forums
  root 'posts#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users, only: [:edit, :update]
  resources :tags

  resources :posts do 
  member do
    put "like", to: "posts#upvote"
  end
end

resources :forums do 
  member do
    put "like", to: "forums#upvote"
  end
end

resources :forums do 
  resources :comments
end

end
