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

  def add_new_book_by_title(title)
    @books.push({title: title, rental_details: {student_name: "", date: ""} })
  end

  def change_rental_details(title, student_name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details] = {student_name: student_name, date: date}
      end
    end
  end

end
