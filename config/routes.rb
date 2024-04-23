Rails.application.routes.draw do
  root "rules#index"

  get "/rules", to: "rules#index"
end
