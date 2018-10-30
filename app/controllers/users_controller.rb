class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #check si un formulaire standard est utilisé 
    if params['username']
    # création standard
      @user = User.create!(
        username: params[:username],
        email: params[:email],
        bio: params[:bio]
        )
    #check si #form_for est utilisé pour le formulaire
    elsif params['user']['username']
      @user = User.create(
        username: params["user"]["username"],
        email: params["user"]["email"],
        bio: params["user"]["bio"]
        )
    end
  end
end
