Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root 'login#login'
  get 'top', to: 'home#index'
  get 'show', to: 'home#show'

  post 'upload', to: 'csv_manage#upload'
  #get ''

end
