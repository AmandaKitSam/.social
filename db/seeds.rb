# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create :email => 'amanda@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :name => 'Amanda', :location => 'Sydney', :joinedDate => '28/08/2017', :dob => '24/09', :userPhoto => 'https://www.unitedwaynorman.org/sites/unitedwaynorman.org/files/cutepuppy.jpg', :admin => true
u2 = User.create :email => 'john@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :name => 'John', :location => 'Sydney', :joinedDate => '28/08/2017', :dob => '05/01', :userPhoto => 'http://clipart.info/images/ccovers/1495586613iron-man-face-clipart-png.png'


Photo.destroy_all
p1 = Photo.create :title => 'Lovely Day', :image => 'https://www.reviewjournal.com/wp-content/uploads/2013/05/8435529-0-150007.jpg', :comment => 'when you see lovely sky like this, life is not so bad', :user_id => 1


Post.destroy_all
m1 = Post.create :dateOfPost => '29/08/2017', :reply => "Hi all, what's your plan for the weekend?", :user_id => u1.id
m2 = Post.create :dateOfPost => '29/08/2017', :reply => "Hey, come over to my place this Sat for drinks", :user_id => u2.id


Comment.destroy_all
c1 = Comment.create :message => "I'm going to the movies, you?", :user_id => u1.id, :post_id => m1.id
c2 = Comment.create :message => "Drinks sound great! See you then", :user_id => u2.id, :post_id => m2.id


# Relationship.destroy_all
# # Following relationships
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
