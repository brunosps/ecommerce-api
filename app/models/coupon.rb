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
class Coupon < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :status, presence: true
  validates :discount_value, presence: true, numericality: { greater_than: 0 }
  validates :max_use, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :due_date, presence: true, future_date: true

  enum status: { active: 1, inactive: 2 }

  include NameSearchable
  include Paginatable
end
