Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :desarrollos
      resources :teles
      resources :politicas
      resources :empresas
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
