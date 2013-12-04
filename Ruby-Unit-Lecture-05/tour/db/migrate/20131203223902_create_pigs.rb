class CreatePigs < ActiveRecord::Migration
  def change
    create_table :pigs do |t|
      t.string :name
      t.boolean :curly_tail
      t.integer :age

      t.timestamps
    end
  end
end
