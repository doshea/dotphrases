class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.text :text

      t.belongs_to :user
      t.timestamps
    end
  end
end
