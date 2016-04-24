class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :status
      t.datetime :last_check
      t.text :infos

      t.timestamps null: false
    end
  end
end
