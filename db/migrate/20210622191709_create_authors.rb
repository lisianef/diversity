class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :nationality
      t.string :sexe

      t.timestamps
    end
  end
end
