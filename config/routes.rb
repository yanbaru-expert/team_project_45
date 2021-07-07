Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  get "/texts/:id", to: "texts#show"
  resources :movies, only: [:index]

  resources :texts do
    resource :read_progresses, only: [:create, :destroy]
  end

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
