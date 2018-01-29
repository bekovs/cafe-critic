Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  get 'categories/index'
  get 'categories/:id/show' => 'categories#show', as: 'categories_show'

  devise_for :users

  resources :shops do
    resources :reviews
  end

  post 'shops/new'

  root 'shops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
