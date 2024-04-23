Rails.application.routes.draw do
  root "rules#index"

  resources :rules
end
