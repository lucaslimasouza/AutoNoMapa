require 'spec_helper'

describe City do
  context "#fields" do
    it { should respond_to(:capital) }
    it { should respond_to(:name) }
    it { should respond_to(:state) }
  end

end
