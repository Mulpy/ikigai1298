class ReminderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    create?
  end

  def send_sms?
    true
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    true
  end
end
