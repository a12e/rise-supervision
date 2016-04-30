class AddHostIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :host_id, :integer
    add_index :services, :host_id
  end
end
