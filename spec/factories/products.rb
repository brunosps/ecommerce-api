# == Schema Information
#
# Table name: products
#
#  id               :bigint           not null, primary key
#  description      :text             not null
#  name             :string           not null
#  price            :decimal(10, 2)   not null
#  productable_type :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  productable_id   :bigint           not null
#
# Indexes
#
#  index_products_on_productable  (productable_type,productable_id)
#
FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price(range: 100.0..400.0) }
  end
end
