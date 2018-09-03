module CurrentCart

	private

	def set_cart
		@cart = Cart.find(sesssion[:cart_id])
	rescue ActiveRecord::RecordNotFound
		@cart = Cart.create
		session[:cart_id]= @cart.id
	end
end