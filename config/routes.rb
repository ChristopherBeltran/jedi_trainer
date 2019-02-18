Rails.application.routes.draw do
  root to: "static#welcome"
  resources :users, :padawans
  resources :force_powers
  resources :trainings

  resources :users, only: [:show] do
    resources :padawans, only: [:show, :edit]
    resources :trainings, only: [:new, :create, :show]
    resources :force_powers, only: [:index, :new, :create]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
