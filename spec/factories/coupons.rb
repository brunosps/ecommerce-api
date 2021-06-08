# == Schema Information
#
# Table name: coupons
#
#  id             :bigint           not null, primary key
#  code           :string           not null
#  discount_value :decimal(5, 2)    not null
#  due_date       :datetime         not null
#  max_use        :integer          not null
#  name           :string           not null
#  status         :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :coupon do
    sequence(:name) { |n| "My Coupon #{n}" }
    code { Faker::Commerce.unique.promotion_code(digits: 4) }
    status { :active }
    discount_value { 25 }
    max_use { 1 }
    due_date { 3.days.from_now }
  end
end
