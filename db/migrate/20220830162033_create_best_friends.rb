class CreateBestFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :best_friends do |t|
      t.string :user_id
      t.string :dog_id
      t.timestamps
    end
  end
end
