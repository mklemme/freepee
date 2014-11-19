FactoryGirl.define do
  factory :loo do
    id 1
    name "MyString"
    address "Address"
    rating 0.5
    handicapped true
    baby_changing true
    key true
    cost "Customer only"
    stall "Single Occupancy"
    shower true
    toiletries true
    venue "Business"
  end
end
