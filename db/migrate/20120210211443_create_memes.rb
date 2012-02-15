class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :tagline
      t.references :user

      t.timestamps
    end
    add_index :memes, :user_id
  end
end
