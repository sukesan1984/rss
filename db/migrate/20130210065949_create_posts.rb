class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string    :title
      t.string    :url
      t.string    :description
      t.integer   :num_click
      t.timestamp :last_updated
      t.timestamps
    end
  end
end
