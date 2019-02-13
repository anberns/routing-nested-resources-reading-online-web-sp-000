Rails.application.routes.draw do

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end
  root 'posts#index'
end
