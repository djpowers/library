class Category < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title

  @category_list = [
    "Fantasy",
    "Action",
    "Erotic Fiction"
  ]

  def self.seed
    @category_list.each do |cat|
      Category.find_or_create_by(title: cat)
    end
  end
end
