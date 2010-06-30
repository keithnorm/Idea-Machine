class Vote
  
  include Mongoid::Document
  include CounterCache  
  
  embedded_in :idea, :inverse_of => :votes
  
end