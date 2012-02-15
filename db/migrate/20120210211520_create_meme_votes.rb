class CreateMemeVotes < ActiveRecord::Migration
  def change
    create_table :meme_votes do |t|
      t.references :user
      t.references :meme

      t.timestamps
    end
    add_index :meme_votes, :user_id
    add_index :meme_votes, :meme_id
  end
end
