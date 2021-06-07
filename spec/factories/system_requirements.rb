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
FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |n| "Basic #{n}" }
    operational_system { Faker::Computer.os }
    storage { "5GB" }
    processor { "AMD Ryzen 7" }
    memory { "2GB" }
    video_board { "N/A" }
  end
end
