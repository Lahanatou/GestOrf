require 'rails_helper'
RSpec.describe User, type: :model do
  describe "User Registration" do

    context "Registration without one attributes " do
      it "Does not pass without email" do
        user = User.new(email: nil, password: "password", password_confirmation: "confirmation")
        expect(user).not_to be_valid
      end

      it "Does not pass without password" do
        user = User.new(email: "abou1@gmail.com", password: nil)
        expect(user).not_to be_valid
      end

      it "Does not pass with false email" do
        user = User.new(email: "abou2mail.co", password: 'password', password_confirmation: "confirmation")
        expect(user).not_to be_valid
      end
    end
    
    context "Ragistrations pass" do
      it "register user with all neccessaries informations" do
        user = User.new(email: "alkg@gmail.com", password: "password")
        expect(user).to be_valid
      end
    end

  end
end
