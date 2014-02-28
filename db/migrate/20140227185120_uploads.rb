class Uploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :title
      t.string :image_url
    end
  end
end
