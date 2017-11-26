Rails.application.routes.draw do
  scope module: :v1 do
  	resources :accounts, only: [:index, :create, :update, :destroy, :show] do
      member do
        put :borrow
        put :return_book
      end
    end
  	resources :users, only: [:index, :create, :update, :destroy, :show]
  end
end
