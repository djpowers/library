require 'spec_helper'

describe Book do

  it { should have_valid(:title).when("Huck Finn", "Harry Potter", "The Giver") }
  it { should_not have_valid(:title).when(nil, "") }

  it { should have_valid(:rating).when(0, 33, 66.7, 100) }
  it { should_not have_valid(:rating).when("one", -1, 101)}

  it 'should insert books into the database when seeding' do
    Book.seed
    expect(Book.where(title: "The Kite Runner")).to be_true
  end

  it 'should not duplicate existing book entries' do
    Book.seed
    Book.seed
    expect(Book.where(title: "The Kite Runner").count).to eql(1)
  end

end
