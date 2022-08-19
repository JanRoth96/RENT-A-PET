class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @pets = Pet.where.missing(:bookings).limit(4)
  end
end
