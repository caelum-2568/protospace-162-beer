class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comment_path(@comment.prototype) # 詳細ページへリダイレクトしたい
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show" # views/prototypes/show.html.erbのファイルを参照しています。
    end
  end
  def show
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
  end
end
