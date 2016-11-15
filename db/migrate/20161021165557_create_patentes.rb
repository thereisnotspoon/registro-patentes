class CreatePatentes < ActiveRecord::Migration
  def change
    create_table :patentes do |t|

      t.timestamps null: false
    end
  end
end
