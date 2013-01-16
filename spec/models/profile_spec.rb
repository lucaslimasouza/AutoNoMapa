require 'spec_helper'

describe Profile do

  fixtures :profiles
  let(:category){mock_model(Category)}

  before(:each) do
    @profile = Profile.new(valid_profile_hash)
    @profile.categories<< category
  end

  context "validations" do
    it "should validates associated with categories" do
      @profile.categories.clear
      @profile.invalid?(:categories).should be_true
      @profile.errors[:categories].should eql([' require at least one category'])
      @profile.should_not be_valid
    end
  end

  context "search with name and category" do
    it "should return the same profile" do
      profile = profiles(:first_profile)
      params = {name: :"Hailton", category: :"Pintor", city: :"Lavras"}
      Profile.search(params).should eq [] #:|
    end
  end

  def valid_profile_hash
    {name: "Lucas", nickname: "Lucas Pintor", cell_phone: "(35) 000-000", phone: "(35)000-000", experience: "Ha 20 anos trabalhando com pintura", description: "uma pequena descricao", courses: "senai"}
  end

end
