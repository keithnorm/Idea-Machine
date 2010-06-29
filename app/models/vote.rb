class Vote
  
  include MongoMapper::EmbeddedDocument
  
  key :genius_id, Integer
  
end