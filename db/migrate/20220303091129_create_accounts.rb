class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.text :pass
      t.text :confirm_pass

      t.timestamps
    end
  end
end
