Rails.application.routes.draw do
  get 'bought_jokes/index'
  get 'bought_jokes/destroy'
  devise_for :users

  root to: "jokes#index"
  namespace :admin do
    resources :jokes, only: [:index, :destroy, :show, :edit, :update] do
      resources :bought_jokes, only: [:index, :show, :destroy]
      post 'create', to: 'bought_jokes#create', as: :create_bought_joke
    end
  end

    resources :jokes, only: [:index, :new, :create]
  end
