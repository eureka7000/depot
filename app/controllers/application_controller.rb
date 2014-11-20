#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class ApplicationController < ActionController::Base
  protect_from_forgery

  puts "ApplicationController"

  private

    def current_cart 
      puts "current_cart"
      puts params
      puts session
      puts "111"
      puts session[:cart_id]
      puts "222"
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      puts cart.id
      session[:cart_id] = cart.id
      puts session[:cart_id]
      cart
    end
end
