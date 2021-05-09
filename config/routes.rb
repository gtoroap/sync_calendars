Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'sessions/new', to: 'sessions#new'
  get 'auth/cronofy/callback', to: 'sessions#create'
end
