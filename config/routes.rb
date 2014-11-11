Kitshare::Application.routes.draw do

  devise_for :users

  devise_scope :user do
    resources :users, except: [:index]
  end

  resources :kits do
  end

  resources :user do
    resources :endorsements, only: [:create, :update, :destroy]
  end

  resources :charges

  root :to => "pages#home"

end
