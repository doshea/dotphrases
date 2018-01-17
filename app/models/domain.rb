# == Schema Information
#
# Table name: email_suffixes
#
#  id             :integer          not null, primary key
#  suffix         :string
#  verified       :boolean
#  institution_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Domain < ApplicationRecord
  belongs_to :institution

  validates :suffix, presence: true, uniqueness: true, domain: true
end
