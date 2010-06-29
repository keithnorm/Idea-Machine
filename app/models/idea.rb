class Idea
  include MongoMapper::Document
  include CounterCache
  
  key :title, String
  key :description, String
  key :genius_id, Integer
  key :votes_counter_cache, Integer, :default => 0, :index => true
  
  has_many :votes
  
  
    
end
