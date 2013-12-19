class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100,
    allow_blank: true
end
