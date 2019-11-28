Rails.application.routes.draw do
  devise_for :users
  root to: 'baby_materials#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :baby_materials do
    resources :sales, only: [:create]
  end


  namespace :admin do
    get 'baby_material/index', to: "baby_materials#index"
  end


end
