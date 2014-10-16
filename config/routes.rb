Kitshare::Application.routes.draw do

  devise_for :users

  devise_scope :user do
    resources :users, except: [:index]
  end

  resources :kits do
  end

  resources :charges

  authenticated :user do
    root :to => "users#profile"
  end

  root :to => "pages#home"

  get "kits/update_kind", as: "update_kind"

end
