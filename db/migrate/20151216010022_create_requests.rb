class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :platform
      t.string :request
      
      t.timestamps null: false
    end
    
    add_index :requests, :email, unique: true
  end
end
