Rails.application.routes.draw do
  root to: 'home#index'

  resources :challenges do
    resources :miles
  end
end
