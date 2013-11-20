require 'faye'

namespace :jobs do 
  desc "Initialize Streaming API channels"
  task stream_init: :environment do
    Stream.init
    # Stream.create_stream("Customer__c")
    # Stream.create_stream("Driver__c")
    # Stream.create_stream("Order__c")
    Stream.create_stream("Customer__c")
    Stream.subscribe_to_stream('Customer__c')
  end
end