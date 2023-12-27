class PrototypesController < ApplicationController
  before_action :move_to_new, only: [:new]
  before_action :move_to_index, only: [:edit]
  

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


  def edit
    @prototype = Prototype.find(params[:id])
  end
  
  def show
    @prototype = Prototype.find(params[:id])
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to root_path, notice: 'データを更新しました。'
    else
      render :edit
    end
  end
  
  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

  def move_to_new
    return if user_signed_in?

    redirect_to user_session_path
  end

 def move_to_index
   @prototype = Prototype.find(params[:id])
   if user_signed_in? && current_user == @prototype.user
     return 
   elsif user_signed_in? && current_user != @prototype.user 
     redirect_to root_path
   else
      return if user_signed_in?
      redirect_to user_session_path
   end    
 end
end


#def move_to_index
 # @prototype = Prototype.find(params[:id])
 # def  move_to_signed_in
    
 #return if user_signed_in? && current_user == @prototype.user

  #  redirect_to root_path, alert: '他人の投稿を編集する権限がありません。'
  #end
 # unless user_signed_in?
   # redirect_to user_session_path
#  end  

#  end  
#end
