class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.datetime :time
      t.string :reflection
      t.integer :user_activity_id

      t.timestamps
    end
  end
end
