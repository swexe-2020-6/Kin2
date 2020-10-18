Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :destroy]
  get 'top/main'
  post 'top/login'
  root 'top#main'
  get 'top/logout'
#    get "application/L4"
#    root "application#L4"
end
