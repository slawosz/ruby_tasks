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
      exceptions = ["an", "a", "the", "and", "in", "of"]
      
      array.map! {|x|
        if x != array[0] && exceptions.include?(x)
          x.downcase
        else 
          x.capitalize
        end      
      }
      
      array.join(" ")
  end 

end
