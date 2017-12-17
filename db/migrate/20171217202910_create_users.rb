class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email

      t.text :image

      t.boolean :is_admin
      t.string :password_digest
      t.string :auth_token

      t.string :password_reset_token
      t.datetime :password_reset_sent_at

      t.boolean :verified
      t.string :verification_token

      t.belongs_to :institution

      t.timestamps
    end
  end
end