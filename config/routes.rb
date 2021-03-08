Rails.application.routes.draw do
  get 'orders/show'
  root 'pages#home'
  devise_for :users
  # root 'movies#index'

  resources :movies
  resources :show_times

  scope controller: :show_times do
    patch '/update-seats', to: "show_times#update_seats"
  end
  
end
