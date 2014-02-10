class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.text :content

      t.timestamps
    end
  end
end
