class RemoveNullFromHomes < ActiveRecord::Migration[5.1]
  def change
    change_column_null :homes, :password_confirmation, from: false, to: true
  end
end
