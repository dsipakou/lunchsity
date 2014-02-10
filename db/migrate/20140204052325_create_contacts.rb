class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :sitename
      t.string :skype

      t.timestamps
    end
  end
end
