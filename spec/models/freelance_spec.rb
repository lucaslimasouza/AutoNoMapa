require 'spec_helper'

describe Freelance do

  fixtures :freelances
  let(:category){mock_model(Category)}

  context "association" do
    it "should have one profile" do
      freelance = freelances(:first_freelance)
      profile = freelance.build_profile(profile_hash)
      profile.categories<< category
      lambda {profile.save!}.should_not raise_error
    end
  end

  def profile_hash
    {name:"Lucas",nickname: "Lucas Pintor",cell_phone:"00000",phone:"00000",kind: :"fisica"}
  end
end
