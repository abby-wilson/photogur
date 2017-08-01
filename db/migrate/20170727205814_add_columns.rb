class AddColumns < ActiveRecord::Migration[5.0]
  def change

    add_column :Users, :email, :string
    add_column :Users, :password, :string

  end

end
