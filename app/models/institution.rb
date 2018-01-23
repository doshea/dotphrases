# == Schema Information
#
# Table name: institutions
#
#  id           :integer          not null, primary key
#  name         :string
#  abbreviation :string
#  image        :text
#  verified     :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Institution < ApplicationRecord
  has_many :domains

  validates :name, presence: true, uniqueness: true
  paginates_per 10

  def propose_domain(suffix)
    domains << Domain.create(suffix: suffix, institution_id: id)
  end
end