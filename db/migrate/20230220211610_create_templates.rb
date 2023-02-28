class CreateTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :templates do |t|
      t.string :title
      t.string :tag1
      t.string :tag2
      t.string :tag3

      t.timestamps
    end
    
  end
end
