class CreateCommerces < ActiveRecord::Migration
  def change
    create_table :commerces do |t|
      t.text :content

      t.timestamps
    end
  end
end
