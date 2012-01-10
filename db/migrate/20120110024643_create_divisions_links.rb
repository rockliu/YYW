class CreateDivisionsLinks < ActiveRecord::Migration
  def change
    create_table :divisions_links do |t|
      t.integer :link_id
      t.integer :division_id
    end
  end
end
