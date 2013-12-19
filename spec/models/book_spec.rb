require 'spec_helper'

describe Book do

  it { should have_valid(:title).when("Huck Finn", "Harry Potter", "The Giver") }
  it { should_not have_valid(:title).when(nil, "") }

  it { should have_valid(:rating).when(0, 33, 66.7, 100) }
  it { should_not have_valid(:rating).when("one", -1, 101)}

  it { should have_many(:checkouts) }
  it { should have_many(:categories) }

end
