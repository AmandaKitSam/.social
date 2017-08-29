# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

u1 = User.create :email => 'amanda@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :name => 'Amanda', :location => 'Sydney', :joinedDate => '28/08/2017', :dob => '24/09', :userPhoto => 'https://www.unitedwaynorman.org/sites/unitedwaynorman.org/files/cutepuppy.jpg'
u2 = User.create :email => 'john@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :name => 'John', :location => 'Sydney', :joinedDate => '28/08/2017', :dob => '05/01', :userPhoto => 'http://clipart.info/images/ccovers/1495586613iron-man-face-clipart-png.png'
puts u1



Photo.destroy_all
p1 = Photo.create :title => 'lovely day', :image => 'https://www.reviewjournal.com/wp-content/uploads/2013/05/8435529-0-150007.jpg', :comment => 'taken the photo in May'


Post.destroy_all
m1 = Post.create :dateOfPost => '29/08/2017'
