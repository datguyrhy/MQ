class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    input = current_customer.id
    new_customer_profile_path
  end

end
