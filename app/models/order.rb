class Order < ActiveRecord::Base
  belongs_to :customer
  # include OrderHelper


end