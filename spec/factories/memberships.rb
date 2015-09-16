FactoryGirl.define do
  factory :membership do
    user
    circle
    role "member"
  end
end
