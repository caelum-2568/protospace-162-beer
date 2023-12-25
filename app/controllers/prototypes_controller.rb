class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
  
    if @prototype.save
      redirect_to root_path, notice: 'データを保存しました。'
    else
      redirect_to new_prototype_path, alert: '保存に失敗しました。もう一度試してください。'
    end
  end
end

private
def prototype_params
  params.require(:prototype).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
end