class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100,
  allow_blank: true

  @book_database = {
    "Harper Lee" => "To Kill a Mockingbird",
    "Khaled Hosseini" => "The Kite Runner",
    "J. K. Rowling" => "Harry Potter and the Goblet of Desire"
  }

  def self.seed
    @book_database.each do |author, title|
      Book.find_or_create_by(title: title, author: author)
    end
  end
end
