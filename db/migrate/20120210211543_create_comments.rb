class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :meme
      t.text :content

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :meme_id
  end
end
