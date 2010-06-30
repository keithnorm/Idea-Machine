class VotesController < ApplicationController
  
  def create
    @idea = Idea.find(params[:idea_id])
    @vote = Vote.new({:genius_id => 1})
    @idea.votes << @vote
    @idea.save
    redirect_to :back
  end
  
end