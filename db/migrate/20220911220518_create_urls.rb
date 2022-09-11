class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :name
      t.string :slug
      t.timestamps
    end
  end
end
