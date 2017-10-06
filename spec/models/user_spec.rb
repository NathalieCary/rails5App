# test to make sure the validation of email addresses work properly - note this is a demo as Devise gem does this automatically
require "rails_helper"

describe User, type: :model do
	
	it "should not validate users without an email address" do
		@user = FactoryGirl.build(:user, email: "not_an_email")
		expect(@user).to_not be_valid
	end

	it "is valid with a first name, last name, email, and password" do
		user = User.new(
			first_name: "Nathalie",
			last_name: "Cary",
			email: "tester@example.com", 
			password: "born-to-surf-forced-to-work",
		)
		expect(user).to be_valid
	end

	it "is invalid without a first name" do
		@user = FactoryGirl.build(:user, first_name: nil)
		@user.valid?
		expect(@user.errors[:first_name]).to_not include("can't be blank")
	end

	it "is invalid without a last name" do
		@user = FactoryGirl.build(:user, last_name: nil)
		@user.valid?
		expect(@user.errors[:last_name]).to_not include("can't be blank")
	end



end