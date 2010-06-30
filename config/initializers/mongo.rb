# # MongoMapper.connection = Mongo::Connection.new('flame.mongohq.com',  27037, :auto_reconnect => true) 
# # MongoMapper.database = "ideamachiner-#{Rails.env}"
# # MongoMapper.database.authenticate('ideamachiner', 'ideamachiner')
# 
# config = YAML.load_file(Rails.root + 'config' + 'database.yml')[Rails.env]
# 
# MongoMapper.connection = Mongo::Connection.new(config['host'], config['port'], {
#   :logger         => Rails.logger
# })
# 
# MongoMapper.database = config['database']
# 
# if config['user'].present?
#   MongoMapper.database.authenticate(config['user'], config['password'])
# end
# 
# Dir[Rails.root + 'app/models/**/*.rb'].each do |model_path|
#   File.basename(model_path, '.rb').classify.constantize
# end