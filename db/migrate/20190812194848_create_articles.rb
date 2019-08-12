class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :author, foreign_key: true
      t.text :title, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
