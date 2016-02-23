Rails.application.routes.draw do
  resources :scribbles

  root 'home#index'
end
