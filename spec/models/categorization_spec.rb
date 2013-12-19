require 'spec_helper'

describe Categorization do

  book = FactoryGirl.create(:book)

  it { should validate_presence_of :book_id }
  it { should validate_presence_of :category_id }
end
