module SFM

	def initialize
		@client = Databasedotcom::Client.new client_id: ENV['DATABASEDOTCOM_CLIENT_ID'], client_secret: ENV['DATABASEDOTCOM_CLIENT_SECRET']
		@client.authenticate username: ENV['SALESFORCE_USERNAME'], password: ENV['SALESFORCE_PASSWORD']
		@client.sobject_module = "SFM"
	end

	def retrieve_model(model)
		@client.materialize(model)
	end
	
end 
