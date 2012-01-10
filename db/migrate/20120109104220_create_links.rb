class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.text :summary
      t.string :cover
      t.string :template, default: 'horizontal'
      t.integer :order
      t.boolean :hide, default: false

      t.timestamps
    end
  end
end
