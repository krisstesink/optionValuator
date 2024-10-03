Rails.application.routes.draw do
  resources :options
  root "options#index"
end