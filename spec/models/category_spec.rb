require 'spec_helper'

describe Category do

  it { should validate_presence_of :title }
  it { should validate_uniqueness_of :title }

  it { should have_many(:categorizations) }
  it { should have_many(:books).through(:categorizations) }

end
