Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
 
  root "home#index"

  get "home/index"

  get "home/about"

  get "home/landing_page"
  
  get "home/about"

  get "home/contact"

  get "home/faq"

  post "home/thank_you"
  
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products do
  resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

