spinometer = User.create(:username => 'spinometer', :email => 'spin@mail.com', :password => 'pass', :first_name => "Jarold", :last_name => "Hymen")
keepitcosmic = User.create(:username => 'keepitcosmic', :email => 'keep@mail.com', :password => 'pass', :first_name => "Pinkie", :last_name => "Green")
screamindetroit= User.create(:username => 'ScreaminDetroit', :email => 'screamin@mail.com', :password => 'pass', :first_name => "Lydia", :last_name => "Simmon")
trashboat = User.create(:username => '---Trash-Boat---', :email => 'trash@mail.com', :password => 'pass', :first_name => "Nancy", :last_name => "Garold")
ianmalcom = User.create(:username => 'ianmalcom', :email => 'ian@mail.com', :password => 'pass', :first_name => "Ian", :last_name => "Malcom")
halebw = User.create(:username => 'halebw', :email => 'hale@mail.com', :password => 'pass', :first_name => "Hale", :last_name => "Bowmen")
franchise1140 = User.create(:username => 'franchise1140', :email => 'franchise@mail.com', :password => 'pass', :first_name => "Mindy", :last_name => "Gray")

spinometer.posts.create(:content => 'The more talented the actor, the less likely we are to know what they\'re really like.')
keepitcosmic.posts.create(:content => 'Calves drink their mother cow’s milk until they’re old enough to realize one day they can just eat the floor.')
screamindetroit.posts.create(:content => 'The two main characters of VeggieTales are both fruits.')
trashboat.posts.create(:content => 'Bricks are just domesticated rocks.')
ianmalcom.posts.create(:content => 'Apple spent billions to build a campus to look like the home button they just got rid of.')
halebw.posts.create(:content => 'Cookie Monster never eats any cookies. Instead he breaks them into small pieces and leaves the crumbs on the floor. This is why he is truly a monster.')