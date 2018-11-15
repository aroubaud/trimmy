class RegistrationsController < ApplicationController
  def after_sign_up_path_for(_resource)
    if current_user.hairstylist
      services_path
    else
      hairstylists_path
    end
  end
end
