require 'rails_helper'

	describe Comment do

		context "testing validations missing rating" do
			it "is not valid without a rating" do
				@comment = FactoryGirl.build(:comment, rating: nil)
				expect(@comment).not_to be_valid
			end
		end

		context "testing validations missing user" do
			it "is not valid without a user" do
				@comment = FactoryGirl.build(:comment, user: nil)
				expect(@comment).not_to be_valid 
			end
		end

		context "testing validations missing body" do
			it "is not valid without a body" do
				@comment = FactoryGirl.build(:comment, body: nil)
				expect(@comment).not_to be_valid
			end
		end

		context "testing validations missing product" do
			it "is not valid without a product" do
				@comment = FactoryGirl.build(:comment, product: nil)
				expect(@comment).not_to be_valid
			end
		end

	end



