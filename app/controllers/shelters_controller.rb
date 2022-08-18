class SheltersController < ApplicationController
  def show
    @shelter = current_user.shelter
    authorize @shelter
  end
end
