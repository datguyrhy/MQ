class OrderDetailsController < ApplicationController

    def index
        @order_details = OrderDetail.all
    end

    def new
        @post = Post.find(params[:id])
        @menus = Menu.all
    end

    def create
        @order_detail = OrderDetail.new(order_detail_params)

        @order_detail.save
        redirect_to @order_detail
    end

    def show
        @order_detail = OrderDetail.find(params[:id])
    end

    private
      def order_detail_params
        params.require(:order_detail).permit(:menu_ids => [])
      end
end