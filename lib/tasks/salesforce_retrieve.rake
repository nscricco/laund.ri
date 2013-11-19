namespace :jobs do 
	desc "Retrieve Salesforce Information"
	task salesforce_retrieve: :environment do
    SFM.init
		orders = SFM.retrieve_model('Order__c')
		customers = SFM.retrieve_model('Customer__c')
	end
end