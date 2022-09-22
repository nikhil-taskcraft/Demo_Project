class AddAboutMeToRegister < ActiveRecord::Migration[7.0]
  def change
    add_column :registers, :about_me, :text
  end
end
