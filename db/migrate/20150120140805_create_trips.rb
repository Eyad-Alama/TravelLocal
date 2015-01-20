class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.string :cover_image
      t.decimal :price_per_person
      t.integer :number_of_people
      t.string :duration
      t.string :highlights
      t.string :includes

      t.timestamps
    end
  end
end
