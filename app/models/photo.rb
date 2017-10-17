# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  title      :text
#  image      :text
#  comment    :text
#  user_id    :integer
#  photo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord
  # belongs_to :user
  belongs_to :user, :optional => true
  has_many :likes
  # has_many :likes

end
