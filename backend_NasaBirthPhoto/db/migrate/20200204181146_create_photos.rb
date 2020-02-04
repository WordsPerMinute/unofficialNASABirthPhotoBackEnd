class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.string :description
      t.string :date
      t.string :credit
      t.string :media_type

      t.timestamps
    end
  end
end
