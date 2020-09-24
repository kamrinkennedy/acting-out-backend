class CreateProfilePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_pictures do |t|
      t.string :url
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
