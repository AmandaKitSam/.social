# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  message    :text
#  post_id    :integer
#  photo_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :post, :optional => true
  belongs_to :photo, :optional => true
  # validates :message, :presence => true
end


# Double check the Information
