class AddImageToMegaphoneMessages < ActiveRecord::Migration
  def change
    add_column :megaphone_messages, :thumb, :string
  end
end
