# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

codes = ["YYZ", "YYT", "YYJ", "YYC", "YXU", "YXE", "YWG", "YVR", "YUL", "YQX", "YQR", "YQM", "YQB", "YOW", "YHZ", "YHM", "YEG"]
codes.each do |code|
  Airport.create(code: code)
end

Flight.create(start_airport_id: 1, finish_airport_id: 2)
Flight.create(start_airport_id: 3, finish_airport_id: 1)
Flight.create(start_airport_id: 2, finish_airport_id: 2)
Flight.create(start_airport_id: 1, finish_airport_id: 5)
Flight.create(start_airport_id: 3, finish_airport_id: 2)
Flight.create(start_airport_id: 4, finish_airport_id: 2)
Flight.create(start_airport_id: 2, finish_airport_id: 5)