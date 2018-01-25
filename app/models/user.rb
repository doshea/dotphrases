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

  has_many :phrases

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  
  before_create { generate_token(:auth_token); generate_token(:verification_token); }


  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column]) #may need a colon
  end
  def display_name
    if self.first_name.present?
      self.last_name.present? ? "#{self.first_name} #{self.last_name}" : self.first_name
    else
      self.username
    end
  end
end
