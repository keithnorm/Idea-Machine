class VotesController < ApplicationController
  
  def create
    @idea = Idea.find(params[:idea_id])
    @idea.votes.create(params[:vote].merge(:user => current_user))
    
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { @idea }
    end
  end
  
end