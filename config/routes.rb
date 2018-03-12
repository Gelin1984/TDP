Rails.application.routes.draw do
  resources :products

  root "home#about"

  get "home/index"

  get "home/landing_page"
  
  get "home/about"

  get "home/contact"

  get "home/faq"
  

  
  
  resources :orders, only: [:index, :show, :create, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

