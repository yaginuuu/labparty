class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.integer :attend
      t.integer :user_id
      t.integer :party_id

      t.timestamps
    end
  end
end
