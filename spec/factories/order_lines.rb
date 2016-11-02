FactoryGirl.define do
  factory :order_line do
    order_id 1
    product_unit_id 1
    size "MyString"
    color "MyString"
    quantity 1
  end
end
