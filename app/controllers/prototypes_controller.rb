class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @user = Prototype.new
  end

  def create
    Prototype.create(user_params)
    redirect_to '/'
  end
end
