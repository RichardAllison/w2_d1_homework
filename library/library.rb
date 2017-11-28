class Library
  attr_accessor :books

  def initialize(books)
    @books = books
    # books = Array.new { {title => "", rental_details => {student_name => "", date => ""} } }
  end

  def list_books
    return @books
  end

  def return_details_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def return_rental_details_by_title(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end



end
