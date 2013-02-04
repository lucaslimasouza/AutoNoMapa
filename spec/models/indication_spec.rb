require 'spec_helper'

describe Indication do

  context "#association" do
    it { should belong_to(:searcher) }
    it { should belong_to(:freelance) }
  end

  context "#validation" do
    it { should validate_presence_of(:searcher_id) }
    it { should validate_presence_of(:freelance_id) }
  end

end
