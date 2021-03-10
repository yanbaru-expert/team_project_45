Rails.application.routes.draw do
  devise_for :users
  get "/", to: "texts#index"
end
