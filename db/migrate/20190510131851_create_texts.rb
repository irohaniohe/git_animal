class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.text        :text, null:false
      t.integer     :user_id
      t.integer     :park_id
      t.date        :visitday
      t.string      :animal, null:false
      t.string      :nickname
      t.string      :image
      t.timestamps null: true
    end
  end
end
