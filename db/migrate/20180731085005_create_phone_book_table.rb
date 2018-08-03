class CreatePhoneBookTable < ActiveRecord::Migration[5.2]
  def change
      create_table :phonebooks do |t|
        t.integer :user_id
        t.string :name
        t.string :number
  
        t.timestamps
    end
  end
end
