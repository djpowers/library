module Seeders
  module Categories
    class << self

      def seed
        category_list.each do |cat|
          Category.find_or_create_by(title: cat)
        end
      end

      def category_list
        [
          "Fantasy",
          "Action",
          "Erotic Fiction"
        ]
      end
    end
  end
end
