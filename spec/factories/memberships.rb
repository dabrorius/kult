FactoryGirl.define do
  factory :membership do
    user
    kult
    role "member"
  end
end
