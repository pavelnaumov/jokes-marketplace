Rails.application.routes.draw do
  devise_for :users

  root to: "jokes#index"

  resources :jokes, except: :index

  namespace :admin do
    resources :jokes, only: [:index, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
