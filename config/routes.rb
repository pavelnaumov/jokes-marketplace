Rails.application.routes.draw do
  devise_for :users

  root to: "jokes#index"

  resources :jokes, except: :index do 
    resources :bought_jokes, only: [:index, :show, :destroy]

  namespace :admin do
    resources :jokes, only: [:index, :edit, :update, :destroy]
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
