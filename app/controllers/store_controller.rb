#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class StoreController < ApplicationController
  def index
  	puts "store index"
    @products = Product.order(:title)
    @cart = current_cart
    puts @products[1]						# #<Product:0000000000>
    # puts @products[1].has_key?(price)   	# no hash
    # puts @products[1].titles   				# Rails Test Prescriptions
    puts [1, 2, 3]


    puts @products.class					
    puts @products.superclass
    puts @products.count
    puts @products.length
  end
end
