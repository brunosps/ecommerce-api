# == Schema Information
#
# Table name: system_requirements
#
#  id                 :bigint           not null, primary key
#  memory             :string           not null
#  name               :string           not null
#  operational_system :string           not null
#  processor          :string           not null
#  storage            :string           not null
#  video_board        :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class SystemRequirement < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :operational_system, presence: true
  validates :storage, presence: true
  validates :processor, presence: true
  validates :memory, presence: true
  validates :video_board, presence: true
end
