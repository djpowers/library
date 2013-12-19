class Categorization < ActiveRecord::Base
  belongs_to :book
  belongs_to :category

  validates_presence_of :book_id
  validates_presence_of :category_id

  validates_numericality_of :book_id
  validates_numericality_of :category_id

end
