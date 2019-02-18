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
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
