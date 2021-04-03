require 'faker'

Airplane.destroy_all

p1 = Airplane.create!(
  model: 'Boeing 747',
  company: 'KLM',
  rows: 8,
  columns: 4
  )
p2 = Airplane.create!(
  model:'Airbus 350-100',
  company: 'Lufthansa',
  rows: 5,
  columns: 7)
p3 = Airplane.create!(
  model: 'Airbus A380',
  company: 'Fly-Emirates',
  rows: 6,
  columns: 2)
p4 = Airplane.create!(
  model: 'Boeing 737',
  company: 'Ryanair',
  rows: 10,
  columns: 9)
p5 = Airplane.create!(
  model: 'Emabaer 175',
  company: 'Vueling',
  rows: 5,
  columns: 5)

puts 'airplane seeds done 😎'

Airport.destroy_all

10.times do
  Airport.create!(
  city: Faker::Address.city)
end

puts 'Airports seeds done 😎'













# Flight.destroy_all


# f1 = Flight.create!(
#   airplane_id: 1,
#   origin: 'Rome',
#   destination: 'Madrid'
#  )
# f2 = Flight.create!(
#   airplane_id: 1,
#   origin: 'Venice',
#   destination: 'Dubai'
#  )
# f3 = Flight.create!(
#   airplane_id: 1,
#   origin: 'Pisa',
#   destination: 'Amsterdam'
#  )
# f4 = Flight.create!(
#   airplane_id: 2,
#   origin: 'London',
#   destination: 'Dubai'
#  )
# f5 = Flight.create!(
#   airplane_id: 1,
#   origin: 'Barcelona',
#   destination: 'Glasgow'
#  )
# f6 = Flight.create!(
#   airplane_id: 2,
#   origin: 'Rome',
#   destination: 'Milan'
#  )
# f7 = Flight.create!(
#   airplane_id: 3,
#   origin: 'Milan',
#   destination: 'New York'
#  )

# puts 'Flight seeds done 😎'

# FlightExecution.destroy_all

# fe1 =  FlightExecution.create!(
#   number: rand(1 .. 50),
#   flight_id: 1,
#   departure_datetime: Faker::Time.forward(days: 23, period: :all)
#  )
# fe2 =  FlightExecution.create!(
#   number: rand(1 .. 50),
#   flight_id: 2,
#   departure_datetime: Faker::Time.forward(days: 23, period: :all)
#  )
# fe3 =  FlightExecution.create!(
#   number: rand(1 .. 50),
#   flight_id: 3,
#   departure_datetime: Faker::Time.forward(days: 23, period: :all)
#  )
# fe4 =  FlightExecution.create!(
#   number: rand(1 .. 50),
#   flight_id: 4,
#   departure_datetime: Faker::Time.forward(days: 23, period: :all)
#  )
# fe5 =  FlightExecution.create!(
#   number: rand(1 .. 50),
#   flight_id: ,
#   departure_datetime: Faker::Time.forward(days: 23, period: :all)
#  )

# puts 'Flight Execution seeds done 😎'












