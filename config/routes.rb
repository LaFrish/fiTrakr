Rails.application.routes.draw do
  # get 'goals/new'
  #
  # get 'goals/index'
  #
  # get 'goals/edit'
  #
  # get 'goals/show'
  #
  # get 'exercises/new'
  #
  # get 'foods/new'

  # get 'sessions/new'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#index"
  resources :sessions
  resources :users do
    resources :foods
    resources :exercises
    resources :miles
    resources :challenge


  # root to: 'home#index'
  # resources :users do
  #   resources :foods
  #   resources :exercises
  #   resources :miles
  #   resources :challenge
  end
end
