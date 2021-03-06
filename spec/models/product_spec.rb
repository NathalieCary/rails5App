require 'rails_helper'

	describe Product do 

        context "when the product has comments" do
          before do
            #let(:product) { Product.create!(name: "race bike") }
            #let(:user) { User.create!(first_name: "ryan", last_name: "cary", email: "elemantz@hotmail.com", password: "elemantz")}
            @product = FactoryGirl.create(:product)
            @user = FactoryGirl.create(:user)
            @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
            @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
            @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
          end

          #test 1 average rating
          it "returns the average rating of all comments" do
            expect(@product.average_rating).to eq 3
          end

          #test 2 validations
          it "is not valid without a name" do
          	expect(Product.new(description: "Nice bike")).not_to be_valid	
          end

    
        end
    end



