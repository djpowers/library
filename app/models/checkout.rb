class Checkout < ActiveRecord::Base
  validates_presence_of :book_id, :patron
  validates_numericality_of :book_id

  belongs_to :book
end
