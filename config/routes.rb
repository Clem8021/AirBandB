Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :experiences, only: [:index, :show, :new] do
      resources :bookings, only: [:new, :create]
    end

    resources :bookings, only: [:index, :show, :update]
end
