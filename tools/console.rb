require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# airbnb
l1 = Listings.new("NYC")
l2 = Listings.new("Chicago")
l3 = Listings.new("California")
l4 = Listings.new("Paris")

g1 = Guests.new("John")
g2 = Guests.new("Billy")
g3 = Guests.new("Sam")
g4 = Guests.new("Max")
g5 = Guests.new("Mike")
g6 = Guests.new("Stephanie")
g7 = Guests.new("Mary")

t1 = Trips.new(l1, g1)
t2 = Trips.new(l2, g1)
t3 = Trips.new(l3, g1)
t4 = Trips.new(l4, g1)
t5 = Trips.new(l1, g2)
t6 = Trips.new(l4, g2)
t7 = Trips.new(l1, g3)
t8 = Trips.new(l1, g4)
t9 = Trips.new(l1, g5)
t10 = Trips.new(l2, g6)
t11 = Trips.new(l2, g7)
t12 = Trips.new(l3, g7)

# bakery
b1 = Bakery.new("Chain1")

i1 = Ingredient.new("Apple", 100)
i2 = Ingredient.new("Sugar", 50)
i3 = Ingredient.new("Pie Crust", 100)
i4 = Ingredient.new("Strawberry", 25)
i5 = Ingredient.new("Cinnamon", 100)
i6 = Ingredient.new("Pie Icing", 50)

d1 = Dessert.new("Apple Pie", [i1,i2,i3,i5], b1)
d2 = Dessert.new("Candied Apple", [i1,i2,i5], b1)
d3 = Dessert.new("Melon Pie", [i4,i2,i3], b1)

#lyft
d1 = Driver.new("driver1")
d2 = Driver.new("driver2")
d3 = Driver.new("driver3")

p1 = Passenger.new("passenger1")
p2 = Passenger.new("passenger2")
p3 = Passenger.new("passenger3")
p4 = Passenger.new("passenger4")
p5 = Passenger.new("passenger5")

r1 = Ride.new(d1, p1, 50)
r2 = Ride.new(d1, p2, 50)
r3 = Ride.new(d1, p3, 50)
r4 = Ride.new(d1, p4, 50)
r5 = Ride.new(d1, p5, 50)
r6 = Ride.new(d2, p1, 50)
r7 = Ride.new(d2, p2, 50)
r8 = Ride.new(d2, p3, 50)
r9 = Ride.new(d3, p1, 50)

# imdb
m1 = Movie.new("Avengers")
m2 = Movie.new("Away From Home")
m3 = Movie.new("Moana")
m4 = Movie.new("Avengers")

s2 = Show.new ("Community")
s3 = Show.new ("The Politician")
s1 = Show.new ("Avengers")

rob = Actor.new("R.D.J")
tom = Actor.new("Tom Holland")
kyl = Actor.new("Kylie Jenner")
scar = Actor.new("Scarelett John")
gywn = Actor.new("Gwyneth Paltrow")
rock = Actor.new("Dwayne Johnson")

c1 = Character.new("Spidey", m1, tom)
c2 = Character.new("Ironman", m2, rob)
c3 = Character.new("Widow", m1, scar)
c4 = Character.new("Britta", s2, kyl)
c5 = Character.new("Mom", s3, gywn)
c6 = Character.new("Maui", m3, rock)
c7 = Character.new("Pepper Pots", m2, gywn)
c7 = Character.new("blue man", m2, tom)
c8 = Character.new("Spidey", m2, tom)

# crowdfunding
u1 = User.new("funder1")
u2 = User.new("funder2")
u3 = User.new("funder3")
u4 = User.new("funder4")
u5 = User.new("funder5")
u6 = User.new("funder6")
u7 = User.new("funder7")
u8 = User.new("funder8")
u9 = User.new("funder9")
u10 = User.new("funder10")

proj1 = Project.new("For Harambe", u1, 1_000)
proj2 = Project.new("Stop the violence!", u2, 500)
proj3 = Project.new("I'm poor", u3, 1_000_000)
proj4 = Project.new("Humane society", u4, 2_000)
proj5 = Project.new("vegans r us", u5, 100)

pledge1 = Pledge.new(proj1, u6, 1_000)
pledge2 = Pledge.new(proj1, u7, 1_000)
pledge3 = Pledge.new(proj1, u8, 5)
pledge4 = Pledge.new(proj1, u9, 5)
pledge5 = Pledge.new(proj1, u10, 5)
pledge6 = Pledge.new(proj2, u6, 5)
pledge7 = Pledge.new(proj2, u7, 5)
pledge8 = Pledge.new(proj4, u6, 5)
pledge9 = Pledge.new(proj4, u8, 5)
pledge10 = Pledge.new(proj4, u9, 5)
pledge11 = Pledge.new(proj5, u10, 5)

# gym
queens = Location.new("Queens")
brooklyn = Location.new("Brooklyn")
manhattan = Location.new("Manhattan")

trainer1 = Trainer.new("Arnold") #3
trainer2 = Trainer.new("Billy") #2
trainer3 = Trainer.new("Chad") #1
trainer4 = Trainer.new("John") #2
trainer5 = Trainer.new("Cindy") #2

queens.hire_trainer(trainer1)
queens.hire_trainer(trainer2)
queens.hire_trainer(trainer3)
queens.hire_trainer(trainer4)
queens.hire_trainer(trainer5)
brooklyn.hire_trainer(trainer1)
brooklyn.hire_trainer(trainer2)
manhattan.hire_trainer(trainer1)
manhattan.hire_trainer(trainer4)
manhattan.hire_trainer(trainer5)

client1 = Client.new("weaksauce")
client2 = Client.new("weakling")
client3 = Client.new("soft")
client4 = Client.new("hangry")
client5 = Client.new("wimp")
client6 = Client.new("meathead")
client7 = Client.new("jock")
client8 = Client.new("bully")
client9 = Client.new("keyboardwarrior")

client1.assign_trainer(trainer1)
client2.assign_trainer(trainer1)
client3.assign_trainer(trainer1)
client4.assign_trainer(trainer1)
client5.assign_trainer(trainer2)
client6.assign_trainer(trainer2)
client7.assign_trainer(trainer3)
client8.assign_trainer(trainer4)
client9.assign_trainer(trainer5)

Pry.start
