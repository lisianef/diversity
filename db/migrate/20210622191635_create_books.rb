class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.integer :publication_year
      t.integer :cover
      t.integer :ISBN
      t.string :status
      t.string :goodreads_link

      t.timestamps
    end
  end
end
