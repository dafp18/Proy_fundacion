Rails.application.routes.draw do
  devise_for :usuarios
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
  resources :imagens

  

end
