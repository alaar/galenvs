class User::InvitationsController < Devise::InvitationsController

  def index
    @users = User.all
  end

  def update
  end
end

