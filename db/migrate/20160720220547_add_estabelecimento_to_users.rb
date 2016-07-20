class AddEstabelecimentoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :estabelecimento, :string
  end
end
