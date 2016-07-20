class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.references :user, index: true

      t.timestamps
    end
  end
end
