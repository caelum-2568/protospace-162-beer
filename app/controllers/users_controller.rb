class UsersController < ApplicationController
  def show 
    #@users = User.includes(:user)
    #@user = User.find(params[:id])
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    #@name = user.name
    #@profile = user.profile
    #@occupation = user.occupation
    #@position = user.position
  end
end