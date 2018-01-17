# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  username               :string           not null
#  email                  :string           not null
#  image                  :text
#  is_admin               :boolean
#  password_digest        :string
#  auth_token             :string
#  password_reset_token   :string
#  password_reset_sent_at :datetime
#  verified               :boolean
#  verification_token     :string
#  institution_id         :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  
end
