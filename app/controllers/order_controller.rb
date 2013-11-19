class OrderController < ApplicationController

	def index
		@orders = orders.all
	end 

end