class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # configuration of  project in i18n, in controller API
  before_filter :set_locale
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  def default_url_options
    { :locale => I18n.locale }
  end
end
