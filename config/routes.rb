Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'
  get '/library', to: 'pages#library'
  get '/achievements', to: 'achievements#index'

  post '/achievements/completion', to: 'achievements#completion'
  post '/achievements/category', to: 'achievements#category'
  post '/achievements/status', to: 'achievements#status'
  get '/profile', to: 'pages#profile'
  get '/workouts_history', to: 'pages#workout_history'
  get '/add_exercise/:id', to: 'workouts#add_exercise', as: 'add_exercise'
  post '/user_achievements/bronze1', to: 'user_achievements#bronze1', as: 'bronze1'
  post '/user_achievements/bronze2', to: 'user_achievements#bronze2', as: 'bronze2'
  post '/user_achievements/silver1', to: 'user_achievements#silver1', as: 'silver1'
  post '/user_achievements/silver2', to: 'user_achievements#silver2', as: 'silver2'
  post '/user_achievements/gold1', to: 'user_achievements#gold1', as: 'gold1'
  post '/user_achievements/gold2', to: 'user_achievements#gold2', as: 'gold2'
  post '/user_achievements/platinum1', to: 'user_achievements#platinum1', as: 'platinum1'
  post '/user_achievements/platinum2', to: 'user_achievements#platinum2', as: 'platinum2'

  resources :achievements, only: [:index]
  resources :users, only: %i[show update] do
    member do
      post 'achievements'
    end
  end
  resources :workout_programs, only: %i[show edit update create new destroy] do
    resources :workouts, shallow: true
  end

  resources :workouts, only: [] do
    resources :exercises, only: [:index, :new, :create]
  end

  resources :exercises, only: [:edit, :update]
  patch 'remove_exercise_from_workout/:id', to: 'exercises#remove_association', as: 'remove_association'
end
