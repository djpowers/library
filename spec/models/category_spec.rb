require 'spec_helper'

describe Category do

  it { should validate_presence_of :title }
  it { should validate_uniqueness_of :title }
  it 'should not duplicate existing book entries' do
    Category.seed
    Category.seed
    expect(Category.where(title: "Fantasy").count).to eql(1)
  end
end
