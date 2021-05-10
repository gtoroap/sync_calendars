Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resource :session, only: [:create, :destroy]

  get 'auth/:provider/callback', to: 'sessions#create'
  root "root#main"
end
