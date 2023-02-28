class CreateUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :uploads do |t|
      t.string :title
      t.string :attachment

      t.timestamps
    end
  end
end