class SheltersController < ApplicationController
  def shelter
    @shelter = current_user.shelter
    authorize @shelter
  end
end
