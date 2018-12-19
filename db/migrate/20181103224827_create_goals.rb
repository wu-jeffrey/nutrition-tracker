class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :cal
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fat

      t.timestamps
    end
    add_column :goals, :user_id, :integer
    add_index 'goals', ['user_id'], :name => 'index_user_id'
  end
end
