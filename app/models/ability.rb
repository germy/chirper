class Ability
  include CanCan::Ability

  def initialize(user)
    unless user 
      can :read, Message
      can :index, Message


      #cannot :index, ShiftJob      
    else
      if user then
          can :manage, Message do |e|
            e.user_id == user.id
          end    

          can :create, Message

          can :read, User do |e|
            e.id == user.id
          end
      end
    end

  end
end
