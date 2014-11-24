#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
  	puts "hidden_div_if 2"
    if condition
      puts "empty cart"
      attributes["style"] = "display: none"
    end
    puts "content_tag"
    content_tag("div", attributes, &block)
    # puts "content_tag"
    # content_tag("div", attributes, &block)
    puts attributes
    puts attributes[:id]
    puts attributes[:style]
  end
end
