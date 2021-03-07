Rails.application.routes.draw do
  root 'movies#index'

  resources :movies
  resources :show_times

  scope controller: :show_times do
    patch '/update-seats', to: "show_times#update_seats"
  end
  
end
