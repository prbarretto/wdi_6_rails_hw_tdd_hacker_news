FactoryGirl.define do
	factory :user do
		email { Faker::Internet.email }
		password 'swordfish'
	end

	factory :article do
		description { Faker::Lorem.words.join }
		link { Faker::Internet.url }
	end
end
