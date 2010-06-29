class Idea
  include MongoMapper::Document
  
  key :title, String
  key :description, String
  key :genius_id, Integer
  key :votes_counter_cache, Integer, :default => 0, :index => true
  
  before_save :increment_vote_counter
  
  has_many :votes
  
  def increment_vote_counter
    self.votes_counter_cache = self.votes.count
  end
  
end
