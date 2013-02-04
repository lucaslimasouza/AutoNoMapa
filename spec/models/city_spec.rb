require 'spec_helper'

describe City do
  context "#fields" do
    it { should respond_to(:capital) }
    it { should respond_to(:name) }
    it { should respond_to(:state) }
  end

  context "#association" do
    it { should belong_to(:state) }
    it { should have_many(:addresses) }
  end

end
