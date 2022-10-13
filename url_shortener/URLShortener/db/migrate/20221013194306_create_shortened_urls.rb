class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :short_url, null: false
      t.string :long_url, null: false
      # t.index [:long_url, :short_url], unique: true
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
