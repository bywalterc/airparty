puts 'Cleaning databases...'
Booking.destroy_all
Space.destroy_all
User.destroy_all

puts 'Creating Users...'



spencer = User.new(name: 'Spencer',
  email: 'spencer@test.com',
  password: 'secret'
)

spencer.remote_photo_url = "http://res.cloudinary.com/bywalterc/image/upload/v1565441366/yp2k2funhrqlgvjecz0b.jpg"
spencer.save

ana = User.new(name: 'Ana',
  email: 'anabebic.x@gmail.com',
  password: 'secret',
  )
ana.remote_photo_url = "https://res.cloudinary.com/bywalterc/image/upload/v1565441302/gijfiyet0ja2cy57oalc.jpg"
ana.save

walter = User.new(
  name: 'Walter',
  email: 'walter@test.com',
  password: 'secret'
  )
walter.remote_photo_url =  'http://res.cloudinary.com/bywalterc/image/upload/v1565440435/uppm4cqhkiyobjurvrw7.jpg'
walter.save

simona = User.new(name: 'Simona',
  email: 'simona@test.com',
  password: 'secret')
simona.remote_photo_url = "https://res.cloudinary.com/bywalterc/image/upload/v1565441484/t67gth7jc1setf7wgqzk.jpg"
simona.save


puts "Finished!"



puts 'Creating Spaces...'

palace = Space.new(name: "Ana's Palace",
  address: "6 Palace Place",
  price: 100,
  category: "Party space",
  capacity: 75,
  user: ana)

palace_url = "https://cdn.londonandpartners.com/asset/english-heritage-eltham-palace-entrance-hall-33dbc7dd425e4dea909e3e09b068fcc6.jpg"
palace.remote_photo_url = palace_url
palace.save

terrace = Space.new(name: "Ana's Apartment Terrace",
  address: "8 Palace Place",
  price: 50,
  category: "Party space",
  capacity: 30,
  user: ana)

terrace_url = "https://secure.i.telegraph.co.uk/multimedia/archive/02569/filename_ext_2569326k.jpg"
terrace.remote_photo_url = terrace_url
terrace.save

roof = Space.new(name: "Simona's Roof Terrace",
  address: '5 Roof Road ',
  price: 50,
  category: 'Party space',
  capacity: 65,
  user: simona)

roof_url = "https://assets.londonist.com/uploads/2019/05/i875/sushi_samba.jpg"
roof.remote_photo_url = roof_url
roof.save

sauna = Space.new(name: "Simona's Sauna and Pool",
  address: '5 Sauna Street',
  price: 75,
  category: 'Party space',
  capacity: 15,
  user: simona)

sauna_url = "https://amp.businessinsider.com/images/56fbdafbdd0895d5598b4931-2732-1366.jpg"
sauna.remote_photo_url = sauna_url
sauna.save

vinyard = Space.new(name: "Walter's Vinyard",
  address: '3 Drunk Way',
  price: 1750,
  category: 'Wedding space',
  capacity: 200,
  user: walter)

vinyard_url = "http://www.kmproperties.biz/vineyard-property-for-sale/green-valley-property/green-valley-vineyard.jpg"
vinyard.remote_photo_url = vinyard_url
vinyard.save

summer = Space.new(name: "Walter's Summer House",
  address: '4 Drunk Way',
  price: 80,
  category: 'BBQ area',
  capacity: 50,
  user: walter)

summer_url = "https://static.standard.co.uk/s3fs-public/thumbnails/image/2016/06/15/11/3.jpg"
summer.remote_photo_url = summer_url
summer.save

tennis = Space.new(name: "Spencer's Tennis Court",
  address: '3 Nadal Way',
  price: 55,
  category: 'Recreation area',
  capacity: 8,
  user: spencer)

tennis_url = "https://odis.homeaway.com/odis/listing/598aeeab-d6d9-4e29-99b1-61942162ae72.c10.jpg"
tennis.remote_photo_url = tennis_url
tennis.save

bunker = Space.new(name: "Spencer's Secret Bunker",
  address: '3 Normandy Heights',
  price: 175,
  category: 'Dinner party venue',
  capacity: 20,
  user: spencer)

bunker_url = "https://i.dailymail.co.uk/i/newpix/2018/03/12/14/4A1E269B00000578-5490783-Equipped_with_survival_gear_and_custom_made_interiors_pictured_t-a-17_1520864892729.jpg"
bunker.remote_photo_url = bunker_url
bunker.save

puts "Finished!"
