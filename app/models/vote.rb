class Vote
  
  include MongoMapper::EmbeddedDocument
  include CounterCache
  
  key :genius_id, ObjectId
  
  belongs_to :idea
  
end