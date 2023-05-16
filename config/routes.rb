Rails.application.routes.draw do
  get 'learn/index'
  devise_for :users
  # get 'home/index'
  root 'home#index'
end
