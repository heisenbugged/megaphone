class CreateMegaphoneCategories < ActiveRecord::Migration
  def change
    create_table :megaphone_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
