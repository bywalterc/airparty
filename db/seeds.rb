puts 'Cleaning databases...'
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
  type: "party space",
  capacity: 75,
  user: ana
},
{
  name: "Ana's Apartment Terrace",
  address: "8 Palace Place",
  price: 50,
  type: "party space",
  capacity: 30,
  user: ana
},

{
  name: "Simona's Roof Terrace",
  address: '5 Roof Road ',
  price: 50,
  type: 'party space',
  capacity: 65,
  user: simona
},


{
  name: "Simona's sauna and pool",
  address: '5 Sauna Street',
  price: 75,
  type: 'party space',
  capacity: 15,
  user: simona
},
{
name: "Walter's Vinyard",
  address: '3 Drunk Way',
  price: 1750,
  type: 'wedding space',
  capacity: 200,
  user: walter

},

{
name: "Walter's Summer House",
  address: '4 Drunk Way',
  price: 80,
  type: 'bbq area',
  capacity: 50,
  user: walter

},

{
  name: "Spencer's Tennis Court",
  address: '3 Nadal Way',
  price: 55,
  type: 'recreation area',
  capacity: 8,
  user: spencer

},

{
  name: "Spencer's Secret Bunker",
  address: '3 Hitler Heights',
  price: 175,
  type: 'dinner party venue',
  capacity: 20,
  user: spencer

},

]

Space.create!(spaces_attributes)
puts "Finished!"
