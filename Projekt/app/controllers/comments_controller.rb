class CommentsController < ApplicationController

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @comment = @gallery.comments.create(params[:comment].permit(:name,:body))

    redirect_to gallery_path(@gallery)
  end

  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @comment = @gallery.comments.find(params[:id])
    @comment.destroy
    
    redirect_to gallery_path(@gallery)
  end
end
