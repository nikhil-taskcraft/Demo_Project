class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :gender
      t.string :marital_status
      t.string :city   
      t.string :image
      t.timestamps
    end
  end
end
