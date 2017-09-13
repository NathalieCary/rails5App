require 'rails_helper'

	describe Comment do

		context "testing validations missing rating" do

			it "is not valid without a rating" do
				@comment = FactoryGirl.build(:comment, rating: nil)
				expect(@comment).not_to be_valid
			end
		end
	end



