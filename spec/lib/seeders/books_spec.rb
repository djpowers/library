require 'spec_helper'

describe Seeders::Books do

  it 'should insert books into the database when seeding' do
    Seeders::Books.seed
    expect(Book.where(title: "The Kite Runner")).to be_true
  end

  it 'should not duplicate existing book entries' do
    Seeders::Books.seed
    Seeders::Books.seed
    expect(Book.where(title: "The Kite Runner").count).to eql(1)
  end

end
