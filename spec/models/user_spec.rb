require "rails_helper"

describe User, type: :model do
  it "should not validate users without an email address" do
    @user = FactoryBot.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end



FactoryGirl.define do

  sequence "email" do |n|
    "person#{n}@example.com"
  end

  factory :user do
    email 
    password "1234567890"
    first_name "Peter"
    last_name "Example"
    admin false
  end

  factory :admin, class: User do
  	email
	password "qwertyuiop"
	admin true
	first_name "Admin"
	last_name "User"
  end

end