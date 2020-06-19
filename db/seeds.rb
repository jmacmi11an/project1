# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
u1 = User.create :name => 'Joel Turnbull', :email => 'jt@ga.co', :password => 'chicken', :image => 'https://fillmurray.com/400/500', :has_backyard => false, :about => "Teacher at GA. Only like cats named Audrey", :has_pets => true, :pet_number => 2, :pet_type => "cats"
u2 = User.create :name => 'Aleks', :email => 'aleks@ga.co', :password => 'chicken'
puts "#{ User.count }"

Shelter.destroy_all
s1 = Shelter.create :name => 'Cheltenham Cat Rescue', :address => "PO Box 12141 A'Beckett St., VIC 8006", :phone => '0423071866'
s2 = Shelter.create :name => "Forever Friends Animal Rescue", :address => "PO Box 873 Pakenham VIC 3810", :phone => '0412618718', :email => 'foster@foreverfriends.org.au'
puts "#{ Shelter.count }"

Animal.destroy_all
a1 = Animal.create :name => 'Cardi', :species => "Dog", :breed => "Bull Arab", :size => "large", :gender => "female", :image => "https://res.cloudinary.com/petrescue/image/upload/h_638,w_638,c_pad,q_auto:best/v1558260990/nocvwa6bhxuictikz9o9.jpg", :hair_length => "short", :about => "Cardi is super cute!! Adopt her now!", :adoption_cost => 550.0
a2 = Animal.create :name => "Byron", :species => 'Cat', :breed => 'Domestic', :size => "small", :gender => "male", :hair_length => "medium", :about => "Byron is such a darling cat. It’s with a huge measure of regret that we have to attempt to rehome him; we now have two babies and Byron is very nervous around the hustle and bustle. He tends to wet when he’s anxious, so the situation is not good for him or for us.", :adoption_cost => 250.0
a3 = Animal.create :name => 'Pudding'
puts "#{ Animal.count }"




# ===================== Associations ====================================
puts "Animals and Shelters"
s2.animals << a1
s1.animals << a2


puts "Animals and Users"
a2.users << u1
a1.users << u2
