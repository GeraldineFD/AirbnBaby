Rails.application.routes.draw do
  devise_for :users
  root to: 'baby_materials#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :baby_materials

  namespace :admin do
    resources :baby_materials, only: [:index]
  end


end
