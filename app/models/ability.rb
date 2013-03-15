class Ability
  include CanCan::Ability

  def initialize(user)             
    if user
      can :booking, :course
      if user.is_admin?
        can :access, :rails_admin       # only allow admin users to access Rails Admin
        can :dashboard                  # allow access to dashboard
        can :manage, :all
        cannot :update, User #employee can update own user details
      end
    end
  end
end
