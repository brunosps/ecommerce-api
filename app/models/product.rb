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
class Product < ApplicationRecord
  belongs_to :productable, polymorphic: true

  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }

  has_one_attached :image
  validates :image, presence: true
end
