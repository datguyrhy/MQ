class OrdersController < ApplicationController
  # before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_customer!

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
  end

  # GET /orders/new
  def new
    @post = Post.find(params[:post_id])
    puts @post.restaurant_id
    @menu_items = MenuItem.where(restaurant_id: @post.restaurant_id)
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    @order.post_id = params[:post_id]
    @order.customer = current_customer

    puts "order total payable in controller"
    @order.total_payable = @order.totalPayable

    # @order.save
    # render plain: "IN CONTROLLER AFTER SAVE"
    # return

    respond_to do |format|
      if @order.save
        format.html { redirect_to post_order_path(post_id: @order.post_id, id: @order.id), notice: 'Order was successfully created.' }
        # format.json { render :show, status: :created, location: @order }

        # Get all orders of this post
        @orders = Order.where(post_id: @order.post_id)
        puts "Orders for this post: >>>>"
        puts @orders.inspect

        # Sum up the total amount of the orders of this post
        totalAmountForPost = @orders.sum(:total_payable)
        puts "Total amount for this post: >>>>"
        puts totalAmountForPost

        # Get minimum spending for restaurant
        minSpending = @order.post.restaurant.minimum_spending
        puts "Min spending for this restaurant: >>>>"
        puts minSpending

        # If more than min. spending,
        if totalAmountForPost > 0 && totalAmountForPost >= minSpending

            puts "Discount Applies"

            # Update discount column in posts table to True
            @order.post.discount_achieved = true
            puts @order.post.inspect

            # Final discounted amount for each order of this post * 0.8
            @order.total_payable = @order.total_payable * 0.8
            @order.save
            puts "New total payable after discount: >>>>"
            puts @order.total_payable

        # Else,
        else
            # Exit
            puts "No Discount"
        end
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:menu_item_ids => [])
      # params.require(:order).permit(:post_id, :customer_id, :menu_item_ids => [])
    end
end
