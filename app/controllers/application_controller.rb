class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    input = current_customer.id

    if current_customer.customer_profile != nil
        posts_path
    else
        new_customer_profile_path
    end
  end

end
