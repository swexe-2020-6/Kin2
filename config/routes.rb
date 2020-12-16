Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :destroy]
  resources :images
  get 'top/main'
  post 'top/login'
  root 'top#main'
  get 'top/logout'
  get 'get_image/:id', to: 'images#get_image'
  resources :likes
#    get "application/L4"
#    root "application#L4"
end
