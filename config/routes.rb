Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'tokens/create'
    end
  end
  # Api definition
  namespace :api, defaults: { format: :json } do

    namespace :v1 do

      resources :users, only: [:show, :create, :update, :destroy]

      resources :tokens, only: [:create]

      resources :products, only: [:show, :index, :create, :update, :destroy]

      resources :orders, only: [:index, :show, :create]

    end

  end

end
