# test to make sure the validation of email addresses work properly - note this is a demo as Devise gem does this automatically
require "rails_helper"

describe User, type: :model do
	it "should not validate users without an email address" do
		@user = FactoryGirl.build(:user, email: "not_an_email")
		expect(@user).to_not be_valid
	end
end