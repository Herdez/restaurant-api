module V1
  class AccountsController < ApplicationController
    before_action :set_account, only: [:show, :destroy, :update]
 
    def index
      accounts = Account.preload(:user).paginate(page: params[:page])
      render json: accounts, meta: pagination(accounts), adapter: :json
    end
 
    def show
      render json: @account, adapter: :json
    end
 
    def create
      account = Account.new(account_params)
      if account.save
        render json: account, adapter: :json, status: 201
      else
        render json: { error: account.errors }, status: 422
      end
    end
 
    def update
      if @account.update(account_params)
        render json: @account, adapter: :json, status: 200
      else
        render json: { error: @account.errors }, status: 422
      end
    end
 
    def destroy
      @account.destroy
      head 204
    end
 
    private
 
    def set_account
      @account = Account.find(params[:id])
    end
 
    def account_params
      params.require(:account).permit(:user_id, :date, :balance)
    end
  end
end
