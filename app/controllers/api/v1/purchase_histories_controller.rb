# typed: true
module Api
  module V1
    class PurchaseHistoriesController < ApplicationController
      before_action :set_purchase_history, only: %i[ show update destroy ]

      # GET /purchase_histories
      def index
        @purchase_histories = PurchaseHistory.all

        render json: @purchase_histories
      end

      # GET /purchase_histories/1
      def show
        render json: @purchase_history
      end

      # POST /purchase_histories
      def create
        @purchase_history = PurchaseHistory.new(purchase_history_params)

        if @purchase_history.save
          render json: @purchase_history, status: :created, location: @purchase_history
        else
          render json: @purchase_history.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /purchase_histories/1
      def update
        if @purchase_history.update(purchase_history_params)
          render json: @purchase_history
        else
          render json: @purchase_history.errors, status: :unprocessable_entity
        end
      end

      # DELETE /purchase_histories/1
      def destroy
        @purchase_history.destroy!
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_purchase_history
        @purchase_history = PurchaseHistory.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def purchase_history_params
        params.require(:purchase_history).permit(:item_id_id, :user_id_id, :deleted_at)
      end
    end
  end
end
