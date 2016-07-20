class CreateValidades < ActiveRecord::Migration
  def change
    create_table :validades do |t|
      t.references :user, index: true
      t.references :produto, index: true
      t.datetime :validade

      t.timestamps
    end
  end
end
