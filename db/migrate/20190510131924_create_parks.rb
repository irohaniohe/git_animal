class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :parkname
      t.string :shortname
      t.string :country
      t.string :ken
      t.string :city
      t.string :area
      t.string :url
      t.boolean :koumoku1
      t.boolean :koumoku2
      t.timestamps
    end
  end
end
