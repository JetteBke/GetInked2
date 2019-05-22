class TattooPolicy < ApplicationPolicy

  def create?
    return true
  end

  def new?
    return true
  end

  def show?
    true
  end

  def edit?
    return true
  end

  def update?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    true if user.role == "artist" && record.user == user
  end

  # class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  # end
end