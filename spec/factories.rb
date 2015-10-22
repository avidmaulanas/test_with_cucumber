# This will guess the User class
FactoryGirl.define do
  factory :user do
    email 		"admin@email.com"
    password  "12345678"
  end

  sequence(:title) 		{ |n| "Title #{n}" }
  sequence(:content) 	{ |n| "Content #{n}" }

  factory :post do
  	title
  	content
    post_time 	Time.now
  end
end