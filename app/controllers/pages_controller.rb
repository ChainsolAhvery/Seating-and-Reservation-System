# Edited 4/22/2020 by Tze Hei Tam: Added redirects from homepage

class PagesController < ApplicationController
  def home
    if !user_signed_in?
      render "home"
    else
      redirect_to reservations_url
    end
  end
end
