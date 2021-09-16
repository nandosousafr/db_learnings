class CreateContatos < ActiveRecord::Migration[6.1]
  def change
    create_table :contatos do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
