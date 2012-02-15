class MemesController < ApplicationController
  def new
    @meme = Meme.new
  end
  
  def index
    @memes = current_student.memes
  end
  
  def show
    @meme = Meme.find(params[:id])    
  end
  
  def edit
    @meme = Meme.find(params[:id])
  end
  
  def update
    if meme = Meme.find(params[:meme])
      meme.update_attributes(params[:meme])
      meme.save
    end
  end
  
  def create
    if meme = Meme.new(params[:meme])
      if meme.save
        redirect_to meme_path(meme)
      end
    end
  end
  
  def destroy
    
  end
  
  def vote
    if meme = Meme.find(params[:id])
      vote = MemeVote.find_or_create_by_user_id_and_meme_id(current_user, meme.id)
    end
    redirect_to :back
  end

end
