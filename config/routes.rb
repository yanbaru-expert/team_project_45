Rails.application.routes.draw do
  get "/texts", to: "texts#index"
end
