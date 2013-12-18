require 'spec_helper'

describe Book do

  it { should have_valid(:title).when("Huck Finn", "Harry Potter", "The Giver") }
  it { should_not have_valid(:title).when(nil, "") }

end
