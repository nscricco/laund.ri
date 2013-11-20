module SFM

  def self.init
		@client = Databasedotcom::Client.new client_id: ENV['DATABASEDOTCOM_CLIENT_ID'], client_secret: ENV['DATABASEDOTCOM_CLIENT_SECRET']
		@client.authenticate username: ENV['SALESFORCE_USERNAME'], password: ENV['SALESFORCE_PASSWORD']
		@client.sobject_module = "SFM"
  end

	def self.retrieve_model(model)
		@client.materialize(model)
	end

  def self.get_sfo_params(object)
    params = {}
    object.attributes.each do
      |attribute| params[attribute[0]] = attribute[1]
    end
  end

  def self.seed_table(collection, object_string)
    collection.each do |object|
      params = SFM.get_sfo_params(object)
      SFM.create_database_entry(object_string, params)
    end
  end

  def self.create_database_entry(table_string, params)
    table_string = table_string.capitalize
    table_name = Object.const_get(table_string)
    params = SFM.set_params(table_name, params)
    p table_name.create(params)
  end

  def self.set_params(table_name, params)
    table_attributes = SFM.get_attributes(table_name)
    params = ActionController::Parameters.new(params)
    params = params.permit(table_attributes)
  end

  def self.get_attributes(table_name)
    table_name.new.attributes.keys
  end
	
end 
