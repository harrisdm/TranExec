class AddClientsWorkshopsTable < ActiveRecord::Migration
  def change
    create_table :clients_workshops, id: false do |t|
      t.integer :client_id
      t.integer :workshop_id
    end

    add_index :clients_workshops, :client_id
    add_index :clients_workshops, :workshop_id
  end
end
