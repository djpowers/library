require 'spec_helper'

describe Seeders::Categories do

  it 'should not duplicate existing book entries' do
    Seeders::Categories.seed
    Seeders::Categories.seed
    expect(Category.where(title: "Fantasy").count).to eql(1)
  end

end
