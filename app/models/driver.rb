class Driver < ActiveRecord::Base
  validates_presence_of :Email__c, uniqueness: true
end