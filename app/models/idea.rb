class Idea
  include Mongoid::Document
  include CounterCache
  
  field :title
  field :description
  field :genius_id
  field :votes_counter_cache, :type => Integer
  
  embeds_many :votes
  
  
    
end
