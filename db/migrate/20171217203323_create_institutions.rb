class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :abbreviation

      t.text :image
      t.string :email_suffix

      t.boolean :verified

      t.timestamps
    end
  end
end