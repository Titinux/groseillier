module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:administrator]
      sign_in Factory.create(:administrator)
    end
  end
end
