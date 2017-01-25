class AddLegendeToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :legende, :string
  end
end
