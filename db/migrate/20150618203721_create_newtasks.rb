class CreateNewtasks < ActiveRecord::Migration
  def change
    create_table :newtasks do |t|

      t.timestamps null: false
    end
  end
end
