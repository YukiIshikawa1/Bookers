Rails.application.routes.draw do
  get 'users/show'
  root to: 'homes#top'
  root  'post_images#index'
  devise_for :users
 resources :post_images, only: [:new, :create, :index, :show, :destroy] do
 resources :favorites, only: [:create, :destroy]
 resources :post_comments, only: [:create, :destroy]
 end
 resources :users, only: [:show, :edit, :update]
end
