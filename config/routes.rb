Rails.application.routes.draw do
  get 'ideas/index'

  get 'ideas/new'

  get 'ideas/create'

  get 'ideas/destroy'

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :users, only: [:index, :update, :destroy]

  root to:'pages#index'
end
