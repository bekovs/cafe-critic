Rails.application.routes.draw do
  get 'shops/index'

  devise_for :users

  root 'shops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
