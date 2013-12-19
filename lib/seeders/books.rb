module Seeders
  module Books
    class << self

      def seed
        books.each do |author, title|
          Book.find_or_create_by(title: title, author: author)
        end
      end

      def books
        {
          "Harper Lee" => "To Kill a Mockingbird",
          "Khaled Hosseini" => "The Kite Runner",
          "J. K. Rowling" => "Harry Potter and the Goblet of Desire"
        }
      end

    end
  end
end
