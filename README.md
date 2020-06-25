# README


https://furever-friend.herokuapp.com/
https://github.com/jmacmi11an/project1

Furever is a Ruby on Rails based pet adoption website.

There are three databases running all with CRUD systems setup. One for Users which includes Session controllers, password authentication and encryption using the Ruby Gem bcrypt.

-One for Users who have a HABTM relationship with animals which they can save or unsave to the "Furever friends" section of their "My Home" page.
-One for animals, who have a HABTM relationship with users.
-And finally one for shelters which have a "has many" relationship with animals.

The CSS styling is done primarily with Bootstrap.

Photos are hosted by Cloudinary and are uploadable to user profiles as well as to animal show pages.



The following are my goals as I continue to develop this website. 

- [ ] Allow a user to switch between an animals photos. On click the class will change and the clicked photo will be come the feature while the old feature will be come a thumb.
- [ ] Allow a user to search for an animal by name from the animal index page.
- [ ] Create a separate page of all of a user's saved animals with their names listed underneath.
- [ ] Create admin features so that some users can update animals and/or shelters, while for others those links are hidden.
- [ ] Web scrape from Pet Rescue and copy their animal and shelter databases.
- [ ] Allow for users to directly email a shelter their intent to adopt with an application made for them from their already inputted information.
- [ ] Remove the hardcoding of the carousel of animals on the home page and replace it with a random selection of animals from the database.
- [ ]
- [ ]
- [ ]
