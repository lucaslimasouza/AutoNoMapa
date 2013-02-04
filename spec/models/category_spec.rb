require 'spec_helper'

describe Category do
  context "#fields" do
    it { should respond_to(:name) }

  end
end
