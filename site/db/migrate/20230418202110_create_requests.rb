class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :category
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :text_of_request

      t.timestamps
    end
  end
end
