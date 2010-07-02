class Idea
  include Mongoid::Document
  
  field :title
  field :description
  field :genius_id
  field :votes_counter_cache, :type => Integer, :default => 0
  
  key :title
  
  embeds_many :votes
  
  referenced_in :user
    
end
