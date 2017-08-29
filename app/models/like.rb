class Like < ActiveRecord::Base
  belongs_to :user, :optional => true
  belongs_to :post, :optional => true
  belongs_to :photo, :optional => true

  validates :user_id, :presence => true
  validates :post_id, :presence => true

end
