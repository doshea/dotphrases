class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :abbreviation

      t.text :image

      t.boolean :verified, default: false

      t.timestamps
    end
  end
end