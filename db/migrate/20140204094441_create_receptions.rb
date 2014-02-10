class CreateReceptions < ActiveRecord::Migration
  def change
    create_table :receptions do |t|
      t.text :content

      t.timestamps
    end
  end
end
