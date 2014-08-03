class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new 

      #If you're a normal user you can read everything, create equipment, and edit/destroy/ stuff that you intially created
      can :read, :all
      can :create, Equipment
      can :edit, Equipment do |equipment|
        equipment.user == user
      end
      can :update, Equipment do |equipment|
        equipment.user == user
      end
      can :destroy, Equipment do |equipment|
        equipment.user == user
      end  

      #if you're not a user you can create a normal user and view everything
      if user.role == nil
        can :read, :all
        can :create, User
      end      

      #if you're an admin you can do everything
      if user.role =="admin"
        can :manage, :all 
      end

  end
end
