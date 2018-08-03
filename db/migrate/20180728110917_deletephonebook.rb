class Deletephonebook < ActiveRecord::Migration[5.2]
  def change
    drop_table :phonebooks
  end
end
