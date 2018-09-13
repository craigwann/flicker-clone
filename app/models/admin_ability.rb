# class AdminAbility
#   include CanCan::AdminAbility
#   def initialize(user)
#     return unless user && user.admin?
#     can :access, :rails_admin
#     can :manage, :all
#   end
# end
