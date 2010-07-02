class Vote
  
  include Mongoid::Document
  
  field :value, :type => Integer
  
  embedded_in :idea, :inverse_of => :votes
  
  referenced_in :user
  
  after_create :update_votes_counter_cache
    
  def update_votes_counter_cache
    self.idea.votes_counter_cache += value
    self.idea.save
  end
  
end