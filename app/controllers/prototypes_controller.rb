class PrototypesController < ApplicationController
  before_action :move_to_new, only: [:new]

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.create(prototype_params)
  
    if @prototype.save
      redirect_to root_path, notice: 'データを保存しました。'
    else
      render :new, status: :unprocessable_entity, alert: '保存に失敗しました。もう一度試してください。'
    end
  end


  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

  def move_to_new
    unless user_signed_in?
      redirect_to user_session_path
    end
  end
end