module ControllerMacros
  def login_freelance
    before(:each) do
      @freelance = Freelance.new(email: "example@mail.com", password: "teste#01")
      @freelance.profile = profiles(:first_profile)
      @request.env["devise.mapping"] = Devise.mappings[:freelance]
      @request.env['warden'].stub :authenticate! => @freelance
      controller.stub :current_freelance => @freelance
      sign_in :freelance, @freelance
    end
  end

end
