MongoMapper.connection = Mongo::Connection.new('flame.mongohq.com',  27037, :auto_reconnect => true) 
MongoMapper.database = "ideamachiner-production"
MongoMapper.database.authenticate('keithnorm', 'pediddle')