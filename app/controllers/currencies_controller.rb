class CurrenciesController < ApplicationController
  before_action :set_currency, only: :show

  # GET /currencies
  def index
    @currencies = Currency.all

    render json: @currencies
  end

  # GET /currencies/1
  def show
    render json: @currency
  end

  private
    def set_currency
      @currency = Currency.find(params[:id])
    end
end
