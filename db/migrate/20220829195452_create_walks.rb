class CreateWalks < ActiveRecord::Migration[7.0]
  def change
    create_table :walks do |t|
      t.string :start
      t.string :midpoints
      t.string :endpoint
      t.integer :timeIn
      t.integer :timeOut
      t.integer :distance
      t.integer :bestFriendsId

      t.timestamps
    end
  end
end
