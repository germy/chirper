class Ability
  include CanCan::Ability

  def initialize(user)
    unless user 
      can :read, Message
      can :index, Message

      cannot :index, ShiftJob      
    else
      if user.employee.role == 'user' then
        can :manage, Message
      end
    end

  end
end
