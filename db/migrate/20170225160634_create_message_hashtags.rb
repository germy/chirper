class CreateMessageHashtags < ActiveRecord::Migration
  def change
    create_table :message_hashtags do |t|
      t.integer :message_id
      t.integer :hashtag_id

      t.timestamps null: false
    end
  end
end
