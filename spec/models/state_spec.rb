require 'spec_helper'

describe State do
  context "#fields" do
    it { should respond_to(:acronym)}
    it { should respond_to(:name) }
    it { should respond_to(:city) }
  end

  context "#association" do
    it { should have_many(:city) }
  end

end
