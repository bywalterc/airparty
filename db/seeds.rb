puts 'Cleaning databases...'
Booking.destroy_all
Space.destroy_all
User.destroy_all

puts 'Creating Users...'



spencer = User.create!(name: 'Spencer',
  email: 'spencer@test.com',
  password: 'secret'
)

ana = User.create!(name: 'Ana',
  email: 'anabebic.x@gmail.com',
  password: 'secret')

walter = User.create!(
  name: 'Walter',
  email: 'walter@test.com',
  password: 'secret'
  )

simona = User.create!(name: 'Simona',
  email: 'simona@test.com',
  password: 'secret')

puts "Finished!"



puts 'Creating Spaces...'
spaces_attributes = [

{
  name: "Ana's palace",
  address: "6 Palace Place",
  price: 100,
  category: "party space",
  capacity: 75,
  user: ana
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},
{
  name: "Ana's Apartment Terrace",
  address: "8 Palace Place",
  price: 50,
  category: "party space",
  capacity: 30,
  user: ana
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},

{
  name: "Simona's Roof Terrace",
  address: '5 Roof Road ',
  price: 50,
  category: 'party space',
  capacity: 65,
  user: simona
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},


{
  name: "Simona's sauna and pool",
  address: '5 Sauna Street',
  price: 75,
  category: 'party space',
  capacity: 15,
  user: simona
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},
{
name: "Walter's Vinyard",
  address: '3 Drunk Way',
  price: 1750,
  category: 'wedding space',
  capacity: 200,
  user: walter
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},

{
name: "Walter's Summer House",
  address: '4 Drunk Way',
  price: 80,
  category: 'bbq area',
  capacity: 50,
  user: walter
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},

{
  name: "Spencer's Tennis Court",
  address: '3 Nadal Way',
  price: 55,
  category: 'recreation area',
  capacity: 8,
  user: spencer
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},

{
  name: "Spencer's Secret Bunker",
  address: '3 Hitler Heights',
  price: 175,
  category: 'dinner party venue',
  capacity: 20,
  user: spencer
  remote_photo_url: "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
},

]

Space.create!(spaces_attributes)
puts "Finished!"
