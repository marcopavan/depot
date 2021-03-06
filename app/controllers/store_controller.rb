class StoreController < ApplicationController
	skip_before_filter :authorize

	def count_store_visualizations
		if session[:counter].nil?
			session[:counter]=0
		else
			session[:counter]+=1
		end
		session[:counter]
	end

	def index
		@products = Product.order(:title)
		@counter=count_store_visualizations
		@cart= current_cart
	end

end
