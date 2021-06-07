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
require "rails_helper"

RSpec.describe Product, type: :model do
  subject { build(:product) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }
  it { is_expected.to belong_to :productable }

  it { is_expected.to have_many(:product_categories).dependent(:destroy) }
  it { is_expected.to have_many(:categories).through(:product_categories) }
end
