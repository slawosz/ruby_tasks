class Book

  # Ruby convention:
  # book = Book.new
  # book.title=('Shopoholic')
  # or
  # book.title = 'Shopoholic' # syntactic sugar
  def title=(title)
    @title = title
  end

  def title
      
      array = @title.split

      array.map! {|x|
        if x == "an" and x != array[0] or x == "a" and x != array[0] or x == "the" and x != array[0] or x == "and" and x != array[0] or x == "in" and x != array[0] or x == "of" and x != array[0]
          x.downcase
        else 
          x.capitalize
        end      
      }
      array.join(" ")

  end 

  
  



end
