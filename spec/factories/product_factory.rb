FactoryGirl.define do

	factory :product do
		name "Classical Ring"
		description "diamond ring"
		price "555.00"
	end

	factory :comment do
		rating "5"
		body "beautiful"
	end

end