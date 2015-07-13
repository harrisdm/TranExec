class CreatePhoneSessionTypes < ActiveRecord::Migration
  def change
    create_table :phone_session_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
