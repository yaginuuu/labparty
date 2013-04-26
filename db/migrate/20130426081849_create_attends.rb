class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
    	t.string :user_id
    	t.string :party_id
    	t.string :attend

      t.timestamps
    end
  end
end
