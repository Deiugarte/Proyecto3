class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def set_admin_locale
    I18n.locale = :es
  end

end
