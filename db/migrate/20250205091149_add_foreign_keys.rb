class AddForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :city, foreign_key: true
    add_reference :gossips, :user, foreign_key: true
    add_reference :private_messages, :sender, references: :users, foreign_key: { to_table: :users }
    add_reference :private_messages, :recipient, references: :users, foreign_key: { to_table: :users }
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :gossip, foreign_key: true
    add_reference :likes, :user, foreign_key: true
    add_reference :likes, :comment, foreign_key: true
    add_reference :likes, :gossip, foreign_key: true

    create_table :gossips_tags, id: false do |t|
      t.belongs_to :gossip, index: true
      t.belongs_to :tag, index: true
    end
  end
end
