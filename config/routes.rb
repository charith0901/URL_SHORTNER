Rails.application.routes.draw do
  root "urls#index"
  resources :urls, only: [ :index, :create, :show ] do
    member do
      get :display
    end
  end
  get "/:short", to: "urls#show", as: :short
end
