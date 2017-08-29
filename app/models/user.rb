# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  userPhoto       :text
#  name            :text
#  email           :text
#  joinedDate      :date
#  dob             :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  location        :text
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true, :length => { :minimum => 3}

  has_many :posts
  has_many :photos
  has_many :likes
end
