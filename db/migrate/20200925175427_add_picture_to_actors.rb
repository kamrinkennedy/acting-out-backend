class AddPictureToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :picture_url, :string
  end
end
