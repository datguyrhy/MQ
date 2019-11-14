class CustomerProfilesController < ApplicationController
  before_action :set_customer_profile, only:[ :edit, :update]

  # GET /customer_profiles
  # GET /customer_profiles.json
  def index
    @customer_profiles = CustomerProfile.all
  end

  # GET /customer_profiles/1
  # GET /customer_profiles/1.json
  def show
    # @customer_profiles = current_customer.inspect
    @customer_profiles = CustomerProfile.all
    @customer_profile = current_customer.customer_profile
    @customers= Customer.all
    @customer_profiles= CustomerProfile.inspect
    @orders =Order.where(customer_id: 1)
  end

  # GET /customer_profiles/new
  def new
    @customer_profile = CustomerProfile.new
  end

  # GET /customer_profiles/1/edit
  def edit
    @customer_profile = CustomerProfile.find(params[:id])
  end

  # POST /customer_profiles
  # POST /customer_profiles.json
  def create
    @customer_profile = CustomerProfile.new(customer_profile_params)
    @customer_profile.customer_id = current_customer.id
    respond_to do |format|
      if @customer_profile.save
        format.html { redirect_to @customer_profile, notice: 'Customer profile was successfully created.' }
        format.json { render :show, status: :created, location: @customer_profile }
      else
        format.html { render :new }
        format.json { render json: @customer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_profiles/1
  # PATCH/PUT /customer_profiles/1.json
  def update
    respond_to do |format|
      if @customer_profile.update(customer_profile_params)
        format.html { redirect_to @customer_profile, notice: 'Customer profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_profile }
      else
        format.html { render :edit }
        format.json { render json: @customer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_profiles/1
  # DELETE /customer_profiles/1.json
  def destroy
    @customer_profile.destroy
    respond_to do |format|
      format.html { redirect_to customer_profiles_url, notice: 'Customer profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_profile
      @customer_profile = CustomerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_profile_params
    params.require(:customer_profile).permit(:name, :address,:phone)
    end
end
