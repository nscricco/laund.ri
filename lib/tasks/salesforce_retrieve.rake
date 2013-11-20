namespace :jobs do 
	desc "Retrieve Salesforce Information"
	task salesforce_retrieve: :environment do
		SFM.retrieve_model('Order__c')
		SFM.retrieve_model('Customer__c')
	end
end