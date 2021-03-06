class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true
      t.boolean :favorite

      t.timestamps
    end
  end
end
