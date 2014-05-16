class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :email
      t.string :room_number
      t.integer :number_of_people
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
