Rails.application.routes.draw do
  root to: "static#welcome"
  resources :users, :padawans
  resources :force_powers
  resources :trainings

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
