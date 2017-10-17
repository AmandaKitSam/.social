# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  post_id    :integer
#  photo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
  belongs_to :user
  # belongs_to :post
  belongs_to :photo, :optional => true

  validates_uniqueness_of :user_id, :scope => :photo

  # validates :user_id, :presence => true
  # validates :post_id, :presence => true


end
