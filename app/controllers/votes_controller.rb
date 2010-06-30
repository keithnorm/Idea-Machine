class VotesController < ApplicationController
  
  def create
    @idea = Idea.find(params[:idea_id])
    @vote = Vote.new({:genius_id => 1})
    @idea.votes << @vote
    @idea.save
    
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { @idea }
    end
  end
  
end