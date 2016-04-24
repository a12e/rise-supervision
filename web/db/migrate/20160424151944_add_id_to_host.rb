class AddIdToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :host_id, :integer
  end
end
