class DropProfilePictures < ActiveRecord::Migration[6.0]
  def change
    drop_table :profile_pictures
  end
end
