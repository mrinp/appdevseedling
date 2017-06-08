class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :first_name, :last_name, :email, :address, :ssn, :date_of_birth])

      devise_parameter_sanitizer.permit(:account_update, :keys => [:address, :date_of_birth])
    end

  protect_from_forgery with: :exception

  # def index
  #   <% if @current_user != nil %>
  #     render("/seedling.html.erb")
  #     <% else %>
  #     before_action :authenticate_user!
  #     <% end %>
  #   end

end
