class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :start_airport, foreign_key: true
      t.references :finish_airport, foreign_key: true
      t.datetime :departure_time
      t.integer :flight_duration

      t.timestamps
    end
  end
end
