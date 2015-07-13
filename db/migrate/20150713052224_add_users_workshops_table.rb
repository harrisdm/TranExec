class AddUsersWorkshopsTable < ActiveRecord::Migration
  def change
    create_table :users_workshops, id: false do |t|
      t.integer :user_id
      t.integer :workshop_id
    end

    add_index :users_workshops, :user_id
    add_index :users_workshops, :workshop_id
  end
end
