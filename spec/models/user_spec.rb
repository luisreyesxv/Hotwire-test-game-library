require 'rails_helper'

describe "Bouncer" do
  context "Newly Created" do
    it "is valid with valid attributes" do
      expect(User.new(
        email: "fake@email.com",
        password: "password1",
        name: "luis reyes"
      )).to be_valid
    end

    it "won't save when missing attributes" do
      expect(User.create).to_not be_valid
      expect(User.create(email: "fake2@email.com")).to_not be_valid
      expect(User.create(email: "fake3@email.com", password: "password1")).to_not be_valid
    end
  
  end
end