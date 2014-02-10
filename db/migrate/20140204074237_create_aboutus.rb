class CreateAboutus < ActiveRecord::Migration
  def change
    create_table :aboutus do |t|
      t.text :content

      t.timestamps
    end
  end
end
