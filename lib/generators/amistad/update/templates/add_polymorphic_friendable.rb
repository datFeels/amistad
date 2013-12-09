class CreateFriendships < ActiveRecord::Migration
  def self.up
    add_column :friendships, :friendable_type, :string
    add_index :friendable, [:friendable_id, :friendable_type]
  end

  def self.down
    remove_index :friendships, :friendable
    remove_column :friendships, :friendable_type

  end
end
