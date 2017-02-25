class Ability
  include CanCan::Ability

  def initialize(user)
    unless user 
      can :read, Message
      can :index, Message
      can :read, User

      #cannot :index, ShiftJob      
    else
      if user then
          can :manage, Message do |e|
            e.user_id == user.id
          end    

          can :create, Message

      end
    end

  end
end
