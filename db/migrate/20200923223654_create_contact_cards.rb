class CreateContactCards < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_cards do |t|
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
