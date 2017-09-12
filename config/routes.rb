Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :users, only: [:index, :update, :destroy]

  root to:'ideas#index'

  resources :ideas, only: [:index, :show, :create, :destroy, :new] do
    member do
      put "like", to: "ideas#upvote"
      put "dislike", to: "ideas#downvote"
    end
  end

  resources :comments, only: [:create]
end
