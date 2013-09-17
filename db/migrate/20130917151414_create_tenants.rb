class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.string :image

      t.timestamps
    end
  end
end
