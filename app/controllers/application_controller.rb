class ApplicationController < ActionController::Base
	protect_from_forgery

  def is_admin?
    unless current_user.role_id==1
      flash[:alert] = 'u r not authorized to do this.'
      render 'public/404.html'
    end
  end
end
