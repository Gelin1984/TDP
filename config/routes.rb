Rails.application.routes.draw do
  resources :products

  root "home#landing_page"

  get "home/index"

  get "home/landing_page"
  
  get "home/about"

  get "home/contact"

  get "home/faq"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

