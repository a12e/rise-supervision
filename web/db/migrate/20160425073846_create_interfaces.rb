class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|
      t.string :name
      t.string :ip
      t.string :status
      t.references :host, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
