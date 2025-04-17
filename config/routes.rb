Rails.application.routes.draw do
  
  root "home#index"

  get "home/index"
  get "home/about"
  get "home/help"

  get '/contactus', to: 'home#contactus', as: 'contactus'

  resources :microposts do
    member do
      get :like
    end
  end

  resources :users
end

