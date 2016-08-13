class BookInStock
  attr_reader :isbn, :price
  #attr_accessor :price
  #attr_writer  #write-only, but this is rarely
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  # #Accessor methods to return the values of the two instance variables.
  # def isbn
  #   @isbn
  # end
  
  # def price
  #   @price
  # end
  #Fortunately, Ruby has a standard message, to_s, that it sends to any object it wants to render as a string.
  # def to_s
  #   "ISBN: #{@isbn}, price: #{@price}"     
  # end
  # def price=(new_price)
  #   @price = new_price
  # end
  
end

# b1 = BookInStock.new("isbn1", 3)
# puts b1

# b2 = BookInStock.new("isbn2", 3.14)
# puts b2

# b3 = BookInStock.new("isbn3", "5.67")
# puts b3

book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price = book.price * 0.75  #discount price

puts "New price = #{book.price}"






