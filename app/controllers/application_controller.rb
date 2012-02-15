class ApplicationController < ActionController::Base
  protect_from_forgery

  def icon(icon, text='', color='white')
    if icon
      return "<i class='icon-#{icon} icon-#{color}'></i>#{text}".html_safe
    else
      return "<h1>YOU FORGOT TO PASS AN ICON ELEMENT, GG ANTI BRO</h1>".html_safe
    end
      
  end
helper_method :icon
  
end