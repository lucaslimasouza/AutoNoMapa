require 'spec_helper'

describe Category do
  context "#fields" do
    it { should respond_to(:name) }
    it { should respond_to(:father_id) }
  end

  context "#association" do
    it { should have_many(:subcategories) }
    it { should belong_to(:father) }
    it { should have_and_belong_to_many(:profiles) }
  end
end
