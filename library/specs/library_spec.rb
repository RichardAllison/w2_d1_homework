require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a method that list all the books and their corresponding details.
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

def setup
  @library = Library.new([{title: "lord_of_the_rings", rental_details: {student_name: "Jeff", date: "01/12/16"} }, {title: "harry_potter", rental_details: {student_name: "Jeff", date: "05/12/16"} }, {title: "jurassic_park", rental_details: {student_name: "Jim", date: "03/6/17"} } ])
end

def test_list_books
  books = [{title: "lord_of_the_rings", rental_details: {student_name: "Jeff", date: "01/12/16"} }, {title: "harry_potter", rental_details: {student_name: "Jeff", date: "05/12/16"} }, {title: "jurassic_park", rental_details: {student_name: "Jim", date: "03/6/17"} } ]
  assert_equal(books, @library.list_books)
  # p @library.list_books
end

def test_return_details_by_title
  result = @library.return_details_by_title("harry_potter")
  assert_equal({title: "harry_potter", rental_details: {student_name: "Jeff", date: "05/12/16"} }, result)
  p result
end

def test_return_rental_details_by_title
  result = @library.return_rental_details_by_title("harry_potter")
  assert_equal({student_name: "Jeff", date: "05/12/16"}, result)
end

def test_add_new_book_by_title
  @library.add_new_book_by_title("war_and_peace")
  assert_equal({title: "war_and_peace", rental_details: {student_name: "", date: ""} }, @library.books[-1])
end

end
