Rails.application.routes.draw do
  resources :tasks do
    member do
      put 'toggle'
    end
  end
  root 'tasks#index'
end
