require 'csv' #requires the standard CSV library
require_relatie 'book_in_stock'  #location is relative to the file we are loading it from ( both same directory)

class CsvReader

  def initialize 
    @books_in_stock = []
  end

  def read_in_csv_date(csv_file_name)
    #header: true tells the lirbary to parse the first line off the file as the columns names
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStook.new(row["ISBN"], row["Price"])    # <<
    end
  end  

  def total_value_in_stock
    sum 0.0
    @books_in_stock.each{|book| sum += book.price}
    sum 
  end


  def number_of_each_isbn


  end
 

    
  end