# == Schema Information
#
# Table name: phrases
#
#  id         :integer          not null, primary key
#  abbrev     :string
#  title      :string
#  text       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Phrase < ApplicationRecord
  belongs_to :user
end