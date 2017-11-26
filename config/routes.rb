Rails.application.routes.draw do
  scope module: :v1 do
  	resources :accounts, only: [:index, :create, :update, :destroy, :show]
  	resources :users, only: [:index, :create, :update, :destroy, :show]
  end
end
