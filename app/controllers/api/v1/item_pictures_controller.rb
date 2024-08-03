# typed: true
module Api
  module V1
    class ItemPicturesController < ApplicationController
      before_action :set_item_picture, only: %i[ show update destroy ]

      # GET /item_pictures
      def index
        @item_pictures = ItemPicture.all

        render json: @item_pictures
      end

      # GET /item_pictures/1
      def show
        render json: @item_picture
      end

      # POST /item_pictures
      def create
        @item_picture = ItemPicture.new(item_picture_params)

        if @item_picture.save
          render json: @item_picture, status: :created, location: @item_picture
        else
          render json: @item_picture.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /item_pictures/1
      def update
        if @item_picture.update(item_picture_params)
          render json: @item_picture
        else
          render json: @item_picture.errors, status: :unprocessable_entity
        end
      end

      # DELETE /item_pictures/1
      def destroy
        @item_picture.destroy!
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_item_picture
        @item_picture = ItemPicture.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def item_picture_params
        params.require(:item_picture).permit(:item_id_id, :name, :url, :deleted_at)
      end
    end
  end
end