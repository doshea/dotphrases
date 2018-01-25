# == Schema Information
#
# Table name: domains
#
#  id             :integer          not null, primary key
#  suffix         :string           not null
#  verified       :boolean          default(FALSE)
#  institution_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Domain < ApplicationRecord
  belongs_to :institution

  validates :suffix, presence: true, uniqueness: true, domain: true
end
