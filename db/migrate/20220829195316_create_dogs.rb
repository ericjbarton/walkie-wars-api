class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :photo_url
      t.string :user_id

      t.timestamps
    end
  end
end
