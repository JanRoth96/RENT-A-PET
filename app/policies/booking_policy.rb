class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    user.shelter == record.pet.shelter
  end

  def destroy?
    user == record.user || user == record.pet.shelter.user
  end
end
