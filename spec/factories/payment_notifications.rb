# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment_notification do
    params "MyText"
    status "MyString"
    transaction_id "MyString"
    cart_id 1
  end
end
