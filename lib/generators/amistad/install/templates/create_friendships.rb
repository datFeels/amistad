class CreateFriendships < ActiveRecord::Migration
  def self.up
    create_table :friendships do |t|
      t.integer :friendable_id
      t.string :friendable_type
      t.integer :friend_id
      t.integer :blocker_id
      t.boolean :pending, :default => true
      t.timestamps
    end
    add_index :friendships, [:friendable_id, :friendable_type]
    add_index :friendships, [:friendable_id, :friend_id], :unique => true
  end

  def self.down
    drop_table :friendships
  end
end
