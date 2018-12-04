require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(email: 'user@domain.com', password: 'password')

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(user).to be_valid
    end

    describe "Emails" do
      it "is not valid without an email" do
        user.email = nil
        expect(user).to_not be_valid
      end

      it "is not valid with a blank email" do
        user.email = ' '
        expect(user).to_not be_valid
      end

      it "is valid with valid emails"do
        valid_emails = %w[validemail@g.c EMAIL@G.C asdfiuhasdgjhr12345@gooooo.cmmmmm _5f6@a1.c.p.m]
        valid_emails.each do |valid_email|
          user.email = valid_email
          expect(user).to be_valid, "#{valid_email.inspect} should be valid"
        end
      end

      it "is not valid with invalid emails" do
        invalid_emails = %w[invalidemail@g.c. .@1..c invalidemail@g.c5 invalidemail@@g.c]
        invalid_emails.each do |invalid_email|
          user.email = invalid_email
          expect(user).to_not be_valid, "#{invalid_email.inspect} should be invalid"
        end
      end
    end

    describe "Passwords" do
      it "is not valid without a password" do
        user.password = nil
        expect(user).to_not be_valid
      end

      it "is not valid with a blank password" do
        user.password = '  '
        expect(user).to_not be_valid
      end

      it "is not valid with a password that is too short" do
        user.password = 'pass'
        expect(user).to_not be_valid
      end

    end
  end
end
