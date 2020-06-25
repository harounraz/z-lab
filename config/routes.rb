Rails.application.routes.draw do
  root 'homes#index'

  namespace :api do
    namespace :v1 do
      resources :teachers, only: [:index, :create, :destroy]
      resources :portals, param: :slug
    end
  end

  get '*path', to: 'homes#index', via: :all
end
