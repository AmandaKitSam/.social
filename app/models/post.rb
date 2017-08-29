# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  dateOfPost :date
#  reply      :text
#  user_id    :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :likes
end
