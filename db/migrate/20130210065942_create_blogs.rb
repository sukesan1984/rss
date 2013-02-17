class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string      :title
      t.string      :url
      t.timestamp   :last_updated
      t.timestamps
    end
  end
end
