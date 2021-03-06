Rails.application.routes.draw do

  resources :gold_reports do
    member do
      post 'preapprove'
      post 'approve'
      post 'reject'
    end
  end

  resources :seal_codes

  resources :branches


  root to: 'visitors#index'
  devise_for :users
  resources :users
end
