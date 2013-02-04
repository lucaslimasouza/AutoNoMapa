require 'spec_helper'

describe Address do
  context "#fields" do
    it { should respond_to(:neighborhood) }
    it { should respond_to(:number) }
    it { should respond_to(:city_id) }
    it { should respond_to(:street) }
  end

  context "#association" do
    it { should belong_to(:city) }
    it { should belong_to(:profile) }
  end
end
