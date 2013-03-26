# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	title 'Mr'
    first_name 'Test'
    last_name 'User'
    username 'username'
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end
