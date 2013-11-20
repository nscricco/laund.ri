namespace :jobs do 
	desc "Retrieve Salesforce Information"
	task salesforce_retrieve: :environment do
    SFM.init
    orders = SFM.retrieve_model('Order__c').all
    customers = SFM.retrieve_model('Customer__c').all
		drivers = SFM.retrieve_model('Driver__c').all
    SFM.seed_table(orders, "order")
    SFM.seed_table(customers, "customer")
    SFM.seed_table(drivers, "driver")
	end
end