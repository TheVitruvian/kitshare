Kitshare::Application.routes.draw do

  devise_for :users

  devise_scope :user do
    resources :users, except: [:index]
  end

  resources :kits do
  end

  resources :users do
    resources :endorsements, only: [:create, :update, :destroy]
  end

  resources :charges

  root :to => "pages#home"

  resources :conversations, only: [:index, :show, :new, :create] do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  resources :photos
    get '/upload_photos' => 'kit_photos#upload_photos', as: :upload_photos
    post '/upload' => 'kit_photos#upload', as: :upload
end
