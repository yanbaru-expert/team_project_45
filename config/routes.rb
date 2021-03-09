Rails.application.routes.draw do
  get "/", to: "texts#index"
end
