class CreateStaticPages < ActiveRecord::Migration[5.1]
  def change
    
    create_table :static_pages do |t|
      t.string :name
      t.text :content
      t.datetime :deleted_at
      t.string :slug
      t.timestamps
    end
  end
end
