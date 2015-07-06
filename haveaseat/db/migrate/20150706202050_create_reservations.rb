class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :begin_time
      t.integer :restaurant_id
      t.integer :user_id
      t.integer :partysize

      t.timestamps null: false
    end
  end
end
