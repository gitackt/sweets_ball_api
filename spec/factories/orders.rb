FactoryBot.define do
  factory :order do
    amount { 1 }
    user { nil }
    asset { nil }
  end
end
