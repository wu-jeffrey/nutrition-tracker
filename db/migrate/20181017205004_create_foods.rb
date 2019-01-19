class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :cal, :default => 0, :null => false
      t.integer :protein, :default => 0, :null => false
      t.integer :carbohydrates, :default => 0, :null => false
      t.integer :fat, :default => 0, :null => false

      t.timestamps
    end
  end
end
