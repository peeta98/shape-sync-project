Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'
  get '/library', to: 'pages#library'
  get '/achievements', to: 'achievements#index'
  get '/workouts_history', to: 'pages#workout_history'

  resources :achievements, only: [:index]
  resources :users, only: %i[show] do
    member do
      post 'achievements'
    end
  end
  resources :workout_programs, only: %i[show edit update create new destroy] do
    resources :workouts, shallow: true do
      resources :exercises, shallow: true
    end
  end
end
