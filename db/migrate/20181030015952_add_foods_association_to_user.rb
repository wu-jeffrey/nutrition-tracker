class AddFoodsAssociationToUser < ActiveRecord::Migration
  def change
    add_column :foods, :user_id, :integer
    add_index 'foods', ['user_id'], :name => 'index_user_id'
  end
end
