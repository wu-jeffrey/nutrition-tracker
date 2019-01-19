class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :cal, :default => 0, :null => false
      t.integer :protein, :default => 0, :null => false
      t.integer :carbohydrates, :default => 0, :null => false
      t.integer :fat, :default => 0, :null => false

      t.timestamps
    end
    add_column :goals, :user_id, :integer
    add_index 'goals', ['user_id'], :name => 'index_user_id_on_goals'
  end
end