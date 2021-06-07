# == Schema Information
#
# Table name: games
#
#  id                    :bigint           not null, primary key
#  developer             :string           not null
#  mode                  :integer          not null
#  release_date          :datetime         not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  system_requirement_id :bigint           not null
#
# Indexes
#
#  index_games_on_system_requirement_id  (system_requirement_id)
#
# Foreign Keys
#
#  fk_rails_...  (system_requirement_id => system_requirements.id)
#
FactoryBot.define do
  factory :game do
    mode { %i(pvp pve both).sample }
    release_date { "2020-06-01" }
    developer { Faker::Company.name }
    system_requirement
  end
end
