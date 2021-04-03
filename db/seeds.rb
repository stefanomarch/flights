require 'faker'


# Airplane Seeds
Airplane.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('airplanes')

p1 = Airplane.create!(
  model: 'Boeing 747',
  total_seats: 48
  )
p2 = Airplane.create!(
  model: 'Boeing 797',
  total_seats: 40
  )
p3 = Airplane.create!(
  model: 'Airbus A380',
  total_seats: 99
  )
p4 = Airplane.create!(
  model: 'Airbus A12',
  total_seats: 32
  )

puts 'airplane seeds done 😎'


# Airports seed
Airport.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('airports')

a1 = Airport.create!(
  code: 'F400',
  name: 'Rome',
  country: 'Italy'
  )
a2 = Airport.create!(
  code: "A400",
  name: 'Venice',
  country: 'Italy'
  )
a3 = Airport.create!(
  code: "S900",
  name: 'Madrid',
  country: 'Spain'
  )
a4 = Airport.create!(
  code: "Y400",
  name: 'London',
  country: 'United Kindom'
  )
a5 = Airport.create!(
  code: "U400",
  name: 'Amsterdam',
  country: 'Holland'
  )
a6 = Airport.create!(
  code: "P900",
  name: 'Dublin',
  country: 'Ireland'
  )
a7 = Airport.create!(
  code: 'O800',
  name: 'Berlin',
  country: 'Germany'
  )
a8 = Airport.create!(
  code: 'R100',
  name: 'New York',
  country: 'United states'
  )

puts 'Airports seeds done 😎'



Flight.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('flights')

f1 = Flight.create!(
  airport_destination_id: 1,
  airport_origin_id: 4 )
f2 = Flight.create!(
  airport_destination_id: 1,
  airport_origin_id: 6 )
f3 = Flight.create!(
  airport_destination_id: 1,
  airport_origin_id: 7 )
f4 = Flight.create!(
  airport_destination_id: 2,
  airport_origin_id: 5 )
f5 = Flight.create!(
  airport_destination_id: 8,
  airport_origin_id: 1 )

puts 'Flight seeds done 😎'

FlightExecution.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('flight_executions')

20.times  do
  FlightExecution.create!(
  number: Faker::Code.sin ,
  departure_datetime: Faker::Time.forward(days: 30,  period: :evening, format: :long),
  airplane_id: rand(1..Airplane.count),
  flight_id: rand(1..Flight.count))
end


puts 'Flight Execution seeds done 😎'

User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')

u1 = User.create!(
  email: 'stefano@gmail.com',
  password: 'password')
u2 = User.create!(
  email: 'alessandra@gmail.com',
  password: 'password')
u3 = User.create!(
  email: 'alberto@gmail.com',
  password: 'password')
u4 = User.create!(
  email: 'francesca@gmail.com',
  password: 'password')
u5 = User.create!(
  email: 'michele@gmail.com',
  password: 'password')


puts 'User seeds done 😎'

Booking.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('bookings')

b1 = Booking.create!(
  user_id: 1,
  flight_execution_id: 2,
  seats: 2)
b2 = Booking.create!(
  user_id: 2,
  flight_execution_id: 4,
  seats: 3)
b3 = Booking.create!(
  user_id: 4,
  flight_execution_id: 2,
  seats: 2)
b4 = Booking.create!(
  user_id: 5,
  flight_execution_id: 3,
  seats: 1)


puts 'Booking seeds done 😎'


Passenger.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('passengers')

p1 = Passenger.create!(
  booking_id: 1,
  first_name: 'giacomo' ,
  last_name: 'Francini')
p2 = Passenger.create!(
  booking_id: 1,
  first_name: 'Francesco',
  last_name: 'Bevilaqua')
p3 = Passenger.create!(
  booking_id: 2,
  first_name: 'Francesca',
  last_name: 'Curatolo')
p4 = Passenger.create!(
  booking_id: 2,
  first_name: 'Gianni',
  last_name: 'Battista')
p5 = Passenger.create!(
  booking_id: 2,
  first_name: 'Giuseppe',
  last_name: 'Conte')
p6 = Passenger.create!(
  booking_id: 3,
  first_name: 'John',
  last_name: 'Doe')
p7 = Passenger.create!(
  booking_id: 3,
  first_name: 'Paolo',
  last_name: 'Villaggio')
p8 = Passenger.create!(
  booking_id: 4,
  first_name: 'Bill',
  last_name: 'Clinton')

puts 'Passenger seeds done 😎'







