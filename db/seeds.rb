Airplane.destroy_all

p1 = Airplane.create!(
  model: 'Boeing 747',
  company: 'KLM',
  rows: 8,
  columns: 4)
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
