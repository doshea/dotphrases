class CreateDomains < ActiveRecord::Migration[5.1]
  def change
    create_table :domains do |t|
      t.string :suffix, null: false
      t.boolean :verified, default: false
      t.belongs_to :institution, null: false
      t.timestamps
    end
  end
end