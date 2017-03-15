class AddContentToLog < ActiveRecord::Migration[5.0]
  def change
    add_column :logs, :content, :text
  end
end
