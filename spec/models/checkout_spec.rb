require 'spec_helper'

describe Checkout do

  book = FactoryGirl.create(:book)
  checkout = Checkout.new(book_id: book.id, patron: "Ron Weasley")

  it { should validate_numericality_of :book_id }

  it { should have_valid(:patron).when("John", "Dave") }
  it { should_not have_valid(:patron).when(nil, "") }

  it 'should associate a new checkout with a specific book' do
    expect(checkout.book_id).to eql(book.id)
  end

end
