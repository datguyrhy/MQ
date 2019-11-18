class PostsController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_customer!, :except => [ :index ]

  # GET /posts
  # GET /posts.json
  def index
    @restaurants = Restaurant.all
    @posts = Post.all.where(discount_achieved: "false").order('created_at DESC')
    # @posts = Post.all.order('created_at DESC')
    @customers =Customer.all
    @restaurant = Restaurant.all

    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
      # @restaurants = Restaurant.search(params[:search]).order("created_at DESC")
    else
      @post = Post.all.order('created_at DESC')
    end



  end

  def fetch

    @restaurant = Restaurant.find(params[:restaurant_id])

    respond_to do |format|
      format.json {render json: @restaurant.to_json}
    end
  end



  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @restaurant = Restaurant.find(@post.restaurant_id)
    @poster = Customer.find(@post.customer_id)
    @orders = Order.where(post_id: @post)
    @post_amount = @post.checkDiscountEligibility
  end

  # GET /posts/new
  def new
    @posts = Post.new
    @restaurants = Restaurant.all
    @customers = Customer.all

  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.customer_id = current_customer.id
    @post.discount_achieved = false

    respond_to do |format|
      if @post.save
        format.html { redirect_to new_post_order_path(@post.id), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :restaurant_id, :message, :pickup_location)
      # params.require(:restaurant).permit(:name)
    end

    # def post_params
    #   params.require(:post).permit(:title, :pickup_location, :message, :search)
    # end
end
