FactoryGirl.define do
  factory :user do
    email "test@test.com"
    password "supersecret"
    password_confirmation "supersecret"
    first_name "Test"
    last_name "User"
    phone "0547301130"
    authentication_token "TOKENTOKENTOKEN"
  end
end
