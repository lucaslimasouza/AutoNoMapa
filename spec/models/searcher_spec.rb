require 'spec_helper'

describe Searcher do
  let(:freelance) {mock_model(Freelance)}

  context "#association" do
    it { should have_many(:indications) }
  end

  context "do some indication" do
  	it "should indicate a @freelance" do
  	  searcher = Searcher.new(email: "searcher@mail.com", password: "1a2b3c",password_confirmation: "1a2b3c")
  	  searcher.save
  	  searcher.indicate(freelance);
  	  searcher.indications.should_not be_nil
  	end

  end

end
