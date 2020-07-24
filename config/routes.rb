Rails.application.routes.draw do
  resources :daily_updates
  get 'pages/home'
  get 'pages/other'

  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
