namespace :jobs do 
	desc "Retrieve Salesforce Information"
	task salesforce_retrieve: :environment do
    SFM.init
		orders = SFM.retrieve_model('Order__c')
		customers = SFM.retrieve_model('Customer__c')
    params = SFM.get_sfo_params(orders.first)
    SFM.create_database_entry("order", params)
	end
end