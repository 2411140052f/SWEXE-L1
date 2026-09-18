Rails.application.routes.draw do
  resources :fukus
  root "fukus#index"
end