class StudentPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      if user.admin? 
        scope.all
      else
        scope.where(teacher_id: 1)
      end
    end
  end

  attr_reader :user, :student

  def initialize(user, student)
    @user = user
    @student = student
  end

  def index?
    true
  end

  def show?
    user.admin
  end

  def create?
    user.admin?
  end

  # def update?
  #   user.present? && (product.user_id == user.id || user.admin?)
  # end

  # def destroy?
  #   user.present? && (product.user_id == user.id || user.admin?)
  # end
end
