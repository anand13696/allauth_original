Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  resources :forums
  root 'posts#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users, only: [:edit, :update]

end
