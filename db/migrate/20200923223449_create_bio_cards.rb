class CreateBioCards < ActiveRecord::Migration[6.0]
  def change
    create_table :bio_cards do |t|
      t.integer :age
      t.integer :weight
      t.string :height
      t.string :eye_color
      t.string :hair_color
      t.references :actor
    end
  end
end
