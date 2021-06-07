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
require "rails_helper"

RSpec.describe SystemRequirement, type: :model do
  subject { build(:system_requirement) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }

  it { is_expected.to validate_presence_of(:memory) }
  it { is_expected.to validate_presence_of(:operational_system) }
  it { is_expected.to validate_presence_of(:processor) }
  it { is_expected.to validate_presence_of(:storage) }
  it { is_expected.to validate_presence_of(:video_board) }

  it { is_expected.to have_many(:games).dependent(:restrict_with_error) }
end
